import 'package:flutter/material.dart';

class CustomTextFieldComponent extends StatelessWidget {
  const CustomTextFieldComponent(
      {super.key,
      this.width = double.infinity,
      this.height = 45,
      this.userController,
      this.keyboard,
      this.textLength,
      required this.hintText,
      this.hintStyle = const TextStyle(
          fontWeight: FontWeight.w500, fontSize: 14, color: Colors.black26),
      this.decorationColor});
  final double width;
  final double height;
  final TextEditingController? userController;
  final TextInputType? keyboard;
  final int? textLength;
  final String hintText;
  final TextStyle? hintStyle;
  final Color? decorationColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: userController,
        keyboardType: keyboard,
        maxLength: textLength,
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: hintText,
            hintStyle: hintStyle,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: decorationColor ?? Colors.green)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: decorationColor ?? Colors.red))),
      ),
    );
  }
}
