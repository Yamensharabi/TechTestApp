import 'package:test_app/constants/app_packages.dart';

//------------------------------------class for define a custom tect theme for our app
class AppTheme {
//----------------------------------------------------------------Arabic Text Theme
  static ThemeData themeEnglish = ThemeData(
    fontFamily: 'Readx Pro',
    splashColor: null,
    primarySwatch: null,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: AppColors.thirdColor,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        color: AppColors.thirdColor,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        color: AppColors.thirdColor,
      ),
      bodyLarge: TextStyle(
        color: AppColors.white,
        fontWeight: FontWeight.w700,
        fontSize: 16,
        decoration: TextDecoration.none,
      ),
      bodyMedium: TextStyle(
        color: AppColors.thirdColor,
        fontSize: 14,
      ),
      bodySmall: TextStyle(
        color: AppColors.thirdColor,
        fontSize: 12,
      ),
    ),
  );
}
