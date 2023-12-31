import 'package:flutter/material.dart';
import 'package:todo1/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, this.hint, this.maxLines = 1, this.onSaved, this.initValue});
  final String? hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final String? initValue;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initValue,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "field is required";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimaryColor),
          enabledBorder: customBorder(),
          border: customBorder(),
          focusedBorder: customBorder()),
    );
  }

  OutlineInputBorder customBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
