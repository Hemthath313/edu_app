import 'dart:async';
import 'package:edu_app/utils/app_colors.dart';
import 'package:edu_app/utils/pagepath.dart';
import 'package:edu_app/view/splash_screen/splash_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      context.push(PagePath.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.green,
      body: Center(
        child: SplashViewScreen(),
      ),
    );
  }
}
