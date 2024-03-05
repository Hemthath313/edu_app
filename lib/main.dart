import 'package:edu_app/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyCDsYEFFCqY_Sw25KW23JHpE_902CKhuHE",
          appId: "1:936486552510:android:654ef9d1b59b8bb3b6efefe",
          projectId: "edu-app-87b5d",
          messagingSenderId: ''));
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
