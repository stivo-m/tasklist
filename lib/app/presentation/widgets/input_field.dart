import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    Key? key,
    required this.controller,
    this.hintText,
    this.fontSize = 16.0,
    this.maxLines = 1,
  }) : super(key: key);

  final TextEditingController controller;
  final String? hintText;
  final double fontSize;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      controller: controller,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontSize,
      ),
      decoration: InputDecoration.collapsed(
        hintText: hintText,
      ),
    );
  }
}
