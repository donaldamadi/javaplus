import 'package:flutter/material.dart';

enum Buttontype { ButtonType1, ButtonType2 }

class CustomButton extends StatelessWidget {
  String text;
  VoidCallback onPressed;
  Color? color;
  double? height;
  double? width;
  Buttontype? buttontype;

  CustomButton(
      {required this.text,
      required this.onPressed,
      this.buttontype = Buttontype.ButtonType1,
      this.color,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 50,
      width: width ?? 300,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: buttontype == Buttontype.ButtonType1
              ? TextStyle()
              : TextStyle(color: Colors.blue),
        ),
        style: ElevatedButton.styleFrom(
            // ?? means if color is null then use the default color
            // dataType? means the variable can be null
            primary: buttontype == Buttontype.ButtonType1
                ? (color ?? Colors.blue)
                : Colors.white),
      ),
    );
  }
}
