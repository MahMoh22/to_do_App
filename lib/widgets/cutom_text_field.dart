import 'package:flutter/material.dart';
import 'package:todo1/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({super.key, required this.hint, this.maxLines = 1});
  String hint;
  int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimaryColor),
          enabledBorder: customBorder(),
          focusedBorder: customBorder()),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
