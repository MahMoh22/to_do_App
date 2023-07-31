import 'package:flutter/material.dart';
import 'package:todo1/constants.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, required this.title});
  String title;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            backgroundColor: kPrimaryColor,
            fixedSize: Size(MediaQuery.of(context).size.width, 55)),
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ));
  }
}
