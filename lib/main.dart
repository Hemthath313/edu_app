import 'package:edu_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const educationalApp());
}

class educationalApp extends StatelessWidget {
  const educationalApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: AppRouter.router.routerDelegate,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
    );
  }
}
