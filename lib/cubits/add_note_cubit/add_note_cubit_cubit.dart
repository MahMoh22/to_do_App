import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo1/constants.dart';
import 'package:todo1/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());
  int color = const Color(0xffDBD56E).value;
  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      note.color = color;
      emit(AddNoteCubitSucess());
    } catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
    }
  }
}
