import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:todo1/constants.dart';
import 'package:todo1/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fetchNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);

      emit(NoteSucsess(notesBox.values.toList()));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
