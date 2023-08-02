import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo1/cubits/note_cubit/note_cubit.dart';
import 'package:todo1/widgets/custom_appbar.dart';
import 'package:todo1/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              title: 'Notes',
              icon: Icons.search,
            ),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
