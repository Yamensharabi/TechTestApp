import 'package:test_app/constants/app_packages.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget widget;
  final Color? color;
  const CustomButton({
    super.key,
    this.onPressed,
    required this.widget,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Center(child: widget),
      ),
    );
  }
}
