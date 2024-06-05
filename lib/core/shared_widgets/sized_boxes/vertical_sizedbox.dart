import 'package:test_app/constants/app_packages.dart';

class VerticalSizedBox extends StatelessWidget {
  const VerticalSizedBox(this.height, {super.key, this.color});
  final double height;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: ColoredBox(
        color: color ?? Colors.transparent,
      ),
    );
  }
}
