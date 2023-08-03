import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:todo1/cubits/note_cubit/note_cubit.dart';
import 'package:todo1/models/note_model.dart';
import 'package:todo1/widgets/custom_appbar.dart';

import 'package:todo1/widgets/cutom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  EditNoteViewBody({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
final GlobalKey<FormState> formKey =GlobalKey();

  @override
  Widget build(BuildContext context) {
    AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomAppBar(
                onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                
                BlocProvider.of<NoteCubit>(context).fetchNotes();
                Navigator.pop(context);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
                title: 'Edit Note',
                icon: Icon(Icons.check),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
              initValue: widget.note.title,
              onSaved: (value) {
                if(value !=null && value.isNotEmpty){
                  widget.note.title = value;
                }
              },
                
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                initValue: widget.note.subTitle,
                onSaved: (value) {
                if(value !=null && value.isNotEmpty){
                  widget.note.subTitle = value;
                }
              },
                maxLines: 5,
              ),
              const SizedBox(
                height: 50,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
