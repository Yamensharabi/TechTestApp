import 'package:test_app/constants/app_packages.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({
    super.key,
    required this.controller,
  });

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomButton(
            color: AppColors.mainColor,
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                CustomText(
                  text: 'Sign In',
                  textStyle: context.textTheme.bodyLarge!
                      .copyWith(color: AppColors.white),
                ),
                Icon(Icons.login, color: AppColors.white)
              ],
            ),
            onPressed: () {
              controller.submitLogin();
            }),
        const VerticalSizedBox(16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText(
              text: "Don't have an account? ",
              textStyle: context.textTheme.bodyMedium,
            ),
            InkWell(
              onTap: () {},
              child: CustomText(
                text: "Sign up",
                textStyle: context.textTheme.bodyMedium!.copyWith(
                    color: AppColors.red, decoration: TextDecoration.underline),
              ),
            )
          ],
        ),
      ],
    );
  }
}
