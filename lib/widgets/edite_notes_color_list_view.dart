import 'package:flutter/material.dart';
import 'package:todo1/constants.dart';
import 'package:todo1/models/note_model.dart';
import 'package:todo1/widgets/color_item.dart';

class EditNotesColorsListView extends StatefulWidget {
  const EditNotesColorsListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColorsListView> createState() =>
      _EditNotesColorsListViewState();
}

class _EditNotesColorsListViewState extends State<EditNotesColorsListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.note.color = kColors[index].value;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: kColors[index],
                ),
              ),
            );
          }),
    );
  }
}
