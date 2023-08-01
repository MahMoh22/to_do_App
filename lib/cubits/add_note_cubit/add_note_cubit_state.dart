part of 'add_note_cubit_cubit.dart';

@immutable
abstract class AddNoteCubitState {}

class AddNoteCubitInitial extends AddNoteCubitState {}

class AddNoteCubitLoading extends AddNoteCubitState {}

class AddNoteCubitSucess extends AddNoteCubitState {}

class AddNoteCubitFailure extends AddNoteCubitState {
  final String errMessage;

  AddNoteCubitFailure(this.errMessage);
}
