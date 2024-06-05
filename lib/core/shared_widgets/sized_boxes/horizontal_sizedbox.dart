import 'package:test_app/constants/app_packages.dart';

class HorizantalSizedBox extends StatelessWidget {
  const HorizantalSizedBox(this.width, {super.key});
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width.w);
  }
}
