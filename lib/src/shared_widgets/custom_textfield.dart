import 'package:flutter/material.dart';

enum CustomButtonType { email, password, number, phone }

class CustomTextField extends StatefulWidget {
  String? headerText;
  String hintText;
  TextEditingController controller;
  CustomButtonType? type;

  CustomTextField({
    this.headerText,
    required this.hintText,
    required this.controller,
    this.type,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText = false;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      widget.headerText != null
          ? Text(
              widget.headerText!,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            )
          : Container(),
      SizedBox(height: 10),
      TextField(
        keyboardType: widget.type == CustomButtonType.email
            ? TextInputType.emailAddress
            : widget.type == CustomButtonType.number
                ? TextInputType.number
                : widget.type == CustomButtonType.phone
                    ? TextInputType.phone
                    : null,
        controller: widget.controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixIcon: widget.type == CustomButtonType.password
              ? GestureDetector(
                  onTap: () => setState(() {
                    obscureText = !obscureText;
                  }),
                  child: obscureText
                      ? Icon(Icons.visibility)
                      : Icon(Icons.visibility_off),
                )
              : null,
          hintText: widget.hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ]);
  }
}
