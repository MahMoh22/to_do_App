import 'package:flutter/material.dart';
import 'package:todo1/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon, required this.onPressed});
  final String title;
  final Icon icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 28),
          ),
          SearchIcon(icon: icon, onPressed: onPressed,),
        ],
      ),
    );
  }
}
