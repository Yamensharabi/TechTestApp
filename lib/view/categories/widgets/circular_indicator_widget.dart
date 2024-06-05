import 'package:flutter/material.dart';
import 'package:test_app/constants/app_colors.dart';

class CircularIndicatorWidget extends StatelessWidget {
  const CircularIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: CircularProgressIndicator(
      backgroundColor: AppColors.mainColor,
      color: AppColors.secondaryColor,
    ));
  }
}
