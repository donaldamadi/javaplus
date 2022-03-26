import 'package:finance/src/features/sign_up/presentation/screens/sign_up_screen.dart';
import 'package:finance/src/shared_widgets/custom_button.dart';
import 'package:flutter/material.dart';

import 'features/sign_in/presentations/screens/sign_in_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pageNum = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    pageNum = value;
                    debugPrint("$pageNum");
                  });
                },
                scrollDirection: Axis.horizontal,
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      const Text('ENHANCE',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w700)),
                      const SizedBox(height: 10),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'Your ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue)),
                        TextSpan(
                            text: 'Future',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.green)),
                        TextSpan(
                            text: ' is in your hands',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.red)),
                      ])),
                      const SizedBox(height: 5),
                      const Text(
                        "Enhance your learning experience that can enhance your own",
                        style: TextStyle(fontSize: 15),
                      ),
                      // Expanded takes up remaining space
                      Expanded(
                        child: Center(
                          child: Image.asset('assets/images/saha.png',
                              height: size.height * 0.2, width: size.width),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      const Text('ENHANCE',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w700)),
                      const SizedBox(height: 10),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'Your ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue)),
                        TextSpan(
                            text: 'Future',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.green)),
                        TextSpan(
                            text: ' is in your hands',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.red)),
                      ])),
                      const SizedBox(height: 5),
                      const Text(
                        "Enhance your learning experience that can enhance your own",
                        style: TextStyle(fontSize: 15),
                      ),
                      // Expanded takes up remaining space
                      Expanded(
                        child: Center(
                          child: Image.asset('assets/images/saha.png',
                              height: size.height * 0.2, width: size.width),
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      const SizedBox(height: 30),
                      const Text('ENHANCE',
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.w700)),
                      const SizedBox(height: 10),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'Your ',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.blue)),
                        TextSpan(
                            text: 'Future',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.green)),
                        TextSpan(
                            text: ' is in your hands',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.red)),
                      ])),
                      const SizedBox(height: 5),
                      const Text(
                        "Enhance your learning experience that can enhance your own",
                        style: TextStyle(fontSize: 15),
                      ),
                      // Expanded takes up remaining space
                      Expanded(
                        child: Center(
                          child: Image.asset('assets/images/saha.png',
                              height: size.height * 0.2, width: size.width),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      height: index == pageNum ? 20 : 10,
                      width: index == pageNum ? 20 : 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index == pageNum ? Colors.grey : Colors.blue,
                      ),
                    ),
                  ),
                )
                // children: [
                //   Container(
                //     height: index == 0 ? 20 : 10,
                //     width: index == 0 ? 20 : 10,
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: index == 0 ? Colors.grey : Colors.blue,
                //     ),
                //   ),
                //   const SizedBox(width: 10),
                //   Container(
                //     height: index == 1 ? 20 : 10,
                //     width: index == 1 ? 20 : 10,
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: index == 1 ? Colors.grey : Colors.blue,
                //     ),
                //   ),
                //   const SizedBox(width: 10),
                //   Container(
                //     height: index == 2 ? 20 : 10,
                //     width: index == 2 ? 20 : 10,
                //     decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: index == 2 ? Colors.grey : Colors.blue,
                //     ),
                //   )
                // ],
                ),
            const SizedBox(height: 20),
            CustomButton(
              text: "Log In",
              onPressed: () => goToSignIn(),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              text: "Sign Up",
              onPressed: () => goToSignUp(),
              color: Colors.green,
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }

  goToSignUp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignUpScreen()));
  }

  goToSignIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignInScreen()));
  }
}
