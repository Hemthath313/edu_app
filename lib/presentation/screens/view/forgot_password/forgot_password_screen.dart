import 'package:edu_app/presentation/screens/view/forgot_password/forgot_password_view.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return const Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xffFCFCFC),
      body: ForgotPasswordScreenView(),
    );
  }
}