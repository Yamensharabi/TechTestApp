import 'package:test_app/constants/app_packages.dart';

class SplashLogoAppWidget extends StatelessWidget {
  final double containerOpacity;
  final double containerSize;
  const SplashLogoAppWidget({
    super.key,
    required this.containerOpacity,
    required this.containerSize,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 2000),
        curve: Curves.fastLinearToSlowEaseIn,
        opacity: containerOpacity,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 2000),
          curve: Curves.fastLinearToSlowEaseIn,
          height: 350.h / containerSize,
          width: 350.h / containerSize,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(AppImages.appLogo),
          ),
        ),
      ),
    );
  }
}
