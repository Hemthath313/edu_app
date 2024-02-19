import 'package:flutter/material.dart';

class ForgotPasswordScreenView extends StatefulWidget {
  const ForgotPasswordScreenView({super.key});

  @override
  State<ForgotPasswordScreenView> createState() =>
      _ForgotPasswordScreenViewState();
}

class _ForgotPasswordScreenViewState extends State<ForgotPasswordScreenView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double screenHeight = constraints.maxHeight;

        return Column(
          children: [
            SizedBox(
              height: 250,
              child: Image.asset("assets/images/forgot_password_image.png"),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.only(left: 50),
              child: Text(
                "Forgot your password ?",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: screenWidth * 0.9,
              margin: EdgeInsets.only(top: screenHeight * 0.06, left: 25),
              child: TextFormField(
                decoration: const InputDecoration(
                  fillColor: Color(0x33C4C4C4),
                  filled: true,
                  suffixIcon: Icon(Icons.email_outlined),
                  border: InputBorder.none,
                  hintText: 'Enter your Email',
                  contentPadding: EdgeInsets.all(10),
                ),
                style: const TextStyle(fontSize: 15),
                validator: (name) =>
                    name!.isEmpty ? 'Please enter the password' : null,
              ),
            ),

            const SizedBox(height: 40,),
            ElevatedButton(
              onPressed: () async {},
              style: ElevatedButton.styleFrom(
                  shape: const ContinuousRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(18))),
                  backgroundColor: const Color(0xffFF3951),
                  padding: const EdgeInsets.only(
                      left: 60, right: 60, top: 10, bottom: 10)),
              child: const Text(
                'Submit',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        );
      },
    );
  }
}
