import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo1/constants.dart';
import 'package:todo1/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
      var notesBox = Hive.box(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteCubitSucess());
    } catch (e) {
      emit(AddNoteCubitFailure(e.toString()));
    }
  }
}
