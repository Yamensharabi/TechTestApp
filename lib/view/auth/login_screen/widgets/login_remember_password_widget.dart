import 'package:test_app/constants/app_packages.dart';

class LoginRememberPasswordWidget extends StatelessWidget {
  final RxBool isChecked = false.obs;

  LoginRememberPasswordWidget({
    super.key,
    required LoginController controller,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Obx(
          () => Checkbox(
            checkColor: AppColors.mainColor,
            activeColor: AppColors.secondaryColor,
            value: isChecked.value,
            onChanged: (newValue) => isChecked.value = newValue!,
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        CustomText(
            text: 'Remember me', textStyle: context.textTheme.bodyMedium),
        const Spacer(),
        InkWell(
          onTap: () {
            //         Get.toNamed(AppRoutes.);
          },
          child: CustomText(
            text: 'Forgot password?',
            textStyle: context.textTheme.bodyMedium!.copyWith(
                color: AppColors.red, decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
