  import 'package:edu_app/utils/app_constants.dart';
  import 'package:flutter/foundation.dart';
  import 'package:flutter/material.dart';

  class LoginPageView extends StatefulWidget {
    const LoginPageView({Key? key}) : super(key: key);

    @override
    State<LoginPageView> createState() => _LoginPageViewState();
  }

  class _LoginPageViewState extends State<LoginPageView> {
    bool isLoginPage = false;
    final TextEditingController _fullNameController = TextEditingController();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

    @override
    Widget build(BuildContext context) {
      double screenHeight = MediaQuery.of(context).size.height;
      double screenWidth = MediaQuery.of(context).size.width;

      return LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: SafeArea(
              child: Stack(
                children: [
                  SizedBox(
                    height: screenHeight * 0.4,
                    child: Center(
                      child: Image.asset(
                        'assets/images/loginScreenLogo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: screenHeight * 0.22),
                          child: Center(
                            child: Text(
                              isLoginPage
                                  ? AppConstants.loginTitle
                                  : AppConstants.signupTitle,
                              style: const TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Center(
                            child: Text(
                              isLoginPage
                                  ? AppConstants.loginTitle2
                                  : AppConstants.signupTitle2,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ),
                        ),
                        !isLoginPage
                            ? Container(
                                width: screenWidth * 0.9,
                                margin: EdgeInsets.only(top: screenHeight * 0.07),
                                child: TextFormField(
                                  controller: _fullNameController,
                                  decoration: const InputDecoration(
                                      fillColor: Color(0x33C4C4C4),
                                      filled: true,
                                      suffixIcon:
                                          Icon(Icons.account_box_outlined),
                                      hintText: 'Name',
                                      contentPadding: EdgeInsets.all(10),
                                      border: InputBorder.none),
                                  style: const TextStyle(fontSize: 15),
                                  validator: (name) => name!.isEmpty
                                      ? 'Please enter the name'
                                      : null,
                                ),
                              )
                            : Container(),
                        Container(
                          width: screenWidth * 0.9,
                          margin: EdgeInsets.only(top: screenHeight * 0.04),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                                fillColor: Color(0x33C4C4C4),
                                filled: true,
                                suffixIcon: Icon(Icons.email_outlined),
                                hintText: 'Email',
                                contentPadding: EdgeInsets.all(10),
                                border: InputBorder.none),
                            style: const TextStyle(fontSize: 15),
                            validator: (email) {
                              if (email!.isEmpty) {
                                return 'please enter the email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Container(
                          width: screenWidth * 0.9,
                          margin: EdgeInsets.only(top: screenHeight * 0.04),
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                              fillColor: Color(0x33C4C4C4),
                              filled: true,
                              suffixIcon: Icon(Icons.lock_clock_outlined),
                              border: InputBorder.none,
                              hintText: 'Password',
                              contentPadding: EdgeInsets.all(10),
                            ),
                            style: const TextStyle(fontSize: 15),
                            validator: (name) => name!.isEmpty
                                ? 'Please enter the password'
                                : null,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.06),
                        ElevatedButton(
                          onPressed: () {
                            _formKey.currentState!.validate();
                          },
                          style: ElevatedButton.styleFrom(
                              shape: const ContinuousRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(18))),
                              backgroundColor: const Color(0xffFF3951),
                              padding: const EdgeInsets.only(
                                  left: 60, right: 60, top: 10, bottom: 10)),
                          child: Text(
                            isLoginPage ? AppConstants.login : AppConstants.next,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Container(
                          margin: const EdgeInsets.only(left: 25),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  isLoginPage
                                      ? AppConstants.newMember
                                      : AppConstants.alreadyMember,
                                  style: const TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w200),
                                ),
                                TextButton(
                                    onPressed: () {
                                      setState(() {
                                        isLoginPage = !isLoginPage;
                                        if (!isLoginPage || isLoginPage) {
                                          _fullNameController.clear();
                                          _emailController.clear();
                                          _passwordController.clear();
                                          _formKey.currentState!.reset();
                                        }
                                      });
                                    },
                                    child: Text(
                                        isLoginPage
                                            ? AppConstants.register
                                            : AppConstants.login,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w200,
                                          color: Colors.grey,
                                        ))),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        !isLoginPage
                            ? SizedBox(
                                height: 100,
                                child: Image.asset("assets/images/welcome.png"))
                            : const SizedBox()
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    }
  }
