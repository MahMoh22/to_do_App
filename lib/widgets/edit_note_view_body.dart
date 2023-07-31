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
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(height: 20,),
            CustomTextField(
              hint: 'Title',
            ),
            SizedBox(
              height: 20,
            ),
            CustomTextField(
              hint: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 50,
            ),
            CustomButton(title: 'Update')
          ],
        ),
      ),
    );
  }
}
