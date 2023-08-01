import 'package:flutter/material.dart';

import 'package:todo1/widgets/note_input_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(child: NoteInputForm()));
  }
}
