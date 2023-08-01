import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo1/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:todo1/models/note_model.dart';
import 'package:todo1/widgets/custom_button.dart';
import 'package:todo1/widgets/cutom_text_field.dart';

class NoteInputForm extends StatefulWidget {
  const NoteInputForm({
    super.key,
  });

  @override
  State<NoteInputForm> createState() => _NoteInputFormState();
}

class _NoteInputFormState extends State<NoteInputForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            title: 'Add',
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                NoteModel noteModel = NoteModel(
                    title: title!,
                    subTitle: subtitle!,
                    date: DateTime.now().toString(),
                    color: 1);
                BlocProvider.of<AddNoteCubitCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          )
        ],
      ),
    );
  }
}
