import 'package:flutter/material.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  List<Color> colors = const [
    Color(0xffDBD56E),
    Color(0xff88AB75),
    Color(0xff2D93AD),
    Color(0xff7D7C84),
    Color(0xffDE8F6E),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                setState(() {
                  
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:5),
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: colors[index],
                ),
              ),
            );
          }),
    );
  }
}

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 28,
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 32,
          );
  }
}
