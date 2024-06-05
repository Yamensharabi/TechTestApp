import 'package:test_app/constants/app_packages.dart';

class CustomAppBar extends StatelessWidget {
  final String? title;
  final Widget? trailing;
  final Function()? onTap;

  const CustomAppBar({super.key, this.title, this.trailing, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              trailing ?? Container(),
              Text(
                title ?? '',
                style: context.textTheme.titleSmall,
              ),
              GestureDetector(
                onTap: onTap ?? () => Get.back(),
                child: SvgPicture.asset(AppSvgs.backIcon),
              ),
            ],
          ),
        ),
        const VerticalSizedBox(10),
      ],
    );
  }
}
