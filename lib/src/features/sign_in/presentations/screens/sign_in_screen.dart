import 'package:flutter/material.dart';

import '../../../../shared_widgets/custom_button.dart';
import '../../../../shared_widgets/custom_textfield.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          body: Stack(
        children: [
          // Center(
          //     child: Opacity(
          //         child: Image.asset(
          //           "assets/images/sample.jpg",
          //           fit: BoxFit.fill,
          //         ),
          //         opacity: 0.2)),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text('Sign In',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    SizedBox(height: 20),
                    Text("Sign in today with your email and password"),
                    SizedBox(height: 50),
                    CustomTextField(
                      hintText: "Enter your email",
                      controller: emailController,
                      headerText: "Email",
                      type: CustomButtonType.email,
                    ),
                    const SizedBox(height: 30),
                    CustomTextField(
                      hintText: "Enter your Password",
                      controller: passwordController,
                      headerText: "Password",
                      type: CustomButtonType.password,
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      color: Colors.cyan,
                      width: 200,
                      text: "Sign In",
                      onPressed: () {
                        debugPrint("Sign In");
                      },
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87),
                      ),
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      color: Colors.cyan,
                      width: 200,
                      text: "Sign Up",
                      buttontype: Buttontype.ButtonType2,
                      onPressed: () {
                        debugPrint("Sign Up");
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }

  goToSignIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SignInScreen()));
  }

  goToSignUp() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()),
        (Route<dynamic> route) => false);
  }
}
