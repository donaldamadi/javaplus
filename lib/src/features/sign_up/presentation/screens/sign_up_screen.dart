import 'package:finance/src/shared_widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

import '../../../../shared_widgets/custom_button.dart';
import '../../../sign_in/presentations/screens/sign_in_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

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
                    SizedBox(height: 20),
                    Text('Sign Up',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w700)),
                    SizedBox(height: 20),
                    Text("Sign Up today with your email and password"),
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
                    const SizedBox(height: 30),
                    CustomTextField(
                      hintText: "Enter your First Name",
                      controller: firstNameController,
                      headerText: "First Name",
                    ),
                    const SizedBox(height: 30),
                    CustomTextField(
                      hintText: "Enter your Last Name",
                      controller: lastNameController,
                      headerText: "Last Name",
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      color: Colors.cyan,
                      width: 200,
                      text: "Sign Up",
                      onPressed: () {
                        debugPrint("Sign Up");
                      },
                    ),
                    const SizedBox(height: 30),
                    GestureDetector(
                      onTap: () => goToSignIn(),
                      child: const Text(
                        "Already have an account? Login",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.blue),
                      ),
                    ),
                    const SizedBox(height: 30),
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
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SignInScreen()),
        (Route<dynamic> route) => false);
  }
}
