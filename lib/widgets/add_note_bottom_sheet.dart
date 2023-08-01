import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:todo1/cubits/add_note_cubit/add_note_cubit_cubit.dart';

import 'package:todo1/widgets/note_input_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
          listener: (context, state) {
        if (state is AddNoteCubitFailure) {
          print('failed ${state.errMessage}');
        }
        if (state is AddNoteCubitSucess) {
          Navigator.pop(context);
        }
          },
          builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is AddNoteCubitLoading ? true : false,
            child: SingleChildScrollView(child: NoteInputForm()));
          },
        ));
  }
}
