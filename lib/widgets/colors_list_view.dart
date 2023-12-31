import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo1/cubits/add_note_cubit/add_note_cubit_cubit.dart';
import 'package:todo1/constants.dart';
import 'package:todo1/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubitCubit>(context).color =
                    kColors[index].value;
                setState(() {});
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: kColors[index],
                ),
              ),
            );
          }),
    );
  }
}
