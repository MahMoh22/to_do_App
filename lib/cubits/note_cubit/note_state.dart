part of 'note_cubit.dart';

@immutable
abstract class NoteState {}

class NoteInitial extends NoteState {}

class NoteSucsess extends NoteState {
  final List<NoteModel> note;

  NoteSucsess(this.note);
}
