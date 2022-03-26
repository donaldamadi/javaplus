import 'package:finance/src/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Finance",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
    );
  }

  // This widget is the root of your application.

}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.face),
          Text("Finance"),
        ],
      ),
    ));
  }
}

class Button extends StatelessWidget {
  sampleFunction() {
    var num = 0;
    // print numbers 1 to 10
    for (var int = 0; int < 10; int++) {
      num++;
      print(num);
    }
  }

  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
