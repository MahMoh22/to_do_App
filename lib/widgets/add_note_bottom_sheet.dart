import 'package:flutter/material.dart';
import 'package:todo1/widgets/custom_button.dart';
import 'package:todo1/widgets/cutom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CustomTextField(hint: 'Title',),
            const SizedBox(height: 20,),
            CustomTextField(hint: 'content', maxLines: 5,),
            const SizedBox(height: 50,),
            CustomButton(title: 'Add')
          ],
        ),
      ),
    );
  }
}
