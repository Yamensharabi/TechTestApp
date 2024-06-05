import 'package:test_app/constants/app_packages.dart';

class LoginHeadWidget extends StatelessWidget {
  const LoginHeadWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedTextKit(animatedTexts: [
          TyperAnimatedText(
            "Let’s Sign You In",
            textStyle: TextStyle(
                color: AppColors.thirdColor,
                fontSize: 22,
                fontWeight: FontWeight.w600),
          ),
        ]),
        AnimatedTextKit(animatedTexts: [
          TyperAnimatedText(
            "Welcome back, you’ve been missed!",
            textStyle: TextStyle(
                color: AppColors.thirdColor,
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
        ]),
      ],
    );
  }
}
