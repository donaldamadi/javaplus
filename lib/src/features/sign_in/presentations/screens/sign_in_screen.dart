import 'package:flutter/material.dart';

import '../../../../app/navigation/presentations/screens/bottom_navigation_bar.dart';
import '../../../../shared_widgets/custom_button.dart';
import '../../../../shared_widgets/custom_textfield.dart';
import '../../../sign_up/presentation/screens/sign_up_screen.dart';

// Stateful Widgets are widgets that can maintain their own state, used when there is going to be a change of state.
// Stateless Widgets are widgets that can not maintain their own state.
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
      // Scaffold is a layout for the major Material Components.
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
                        goToSignIn();
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
                      onPressed: () => goToSignUp(),
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
        context, MaterialPageRoute(builder: (context) => NavigationPage()));
  }

  goToSignUp() {
    //pushAndRemoveUntil pushes to a new page and removes all other previous pages
    //pop removes the current page and pushes the previous page
    //popUntil removes all the pages until the given page is reached
    //push takes you to the given page
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SignUpScreen()),
        (Route<dynamic> route) => false);
  }
}
