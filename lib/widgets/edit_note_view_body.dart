import 'package:flutter/material.dart';
import 'package:todo1/widgets/custom_appbar.dart';
import 'package:todo1/widgets/custom_button.dart';
import 'package:todo1/widgets/cutom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onSaved: (value) {},
              hint: 'Title',
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              onSaved: (value) {},
              hint: 'content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              title: 'Update',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
