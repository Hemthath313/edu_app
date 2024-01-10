import 'package:edu_app/utils/app_colors.dart';
import 'package:edu_app/utils/app_constants.dart';
import 'package:flutter/material.dart';

class SplashViewScreen extends StatelessWidget {
  const SplashViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.2,
            ),
            Image.asset(
              'assets/images/splashScreen.png',
              height: constraints.maxHeight * 0.4,
              width: constraints.maxWidth,
              fit: BoxFit.contain,
            ),
            SizedBox(height: constraints.maxHeight * 0.1),
            Text(
              AppConstants.splashScreenTitle,
              style: TextStyle(
                fontSize: constraints.maxHeight * 0.05,
                fontWeight: FontWeight.w600,
                fontFamily: 'Pacifico',
                color: AppColors.white,
              ),
            ),
          ],  
        );
      },
    );
  }
}
