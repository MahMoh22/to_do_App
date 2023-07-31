import 'package:flutter/material.dart';
import 'package:todo1/widgets/search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Notes',
            style: TextStyle(fontSize: 28),
          ),
          SearchIcon(),
        ],
      ),
    );
  }
}
