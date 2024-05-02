import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelected, required this.colors});
  final bool isSelected;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30,
            child: CircleAvatar(
              backgroundColor: colors,
              radius: 25,
            ),
          )
        : CircleAvatar(
            backgroundColor: colors,
            radius: 30,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({
    super.key,
  });

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  @override
  int currentIndex = 0;

  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColorsList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 10),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  print(currentIndex);
                  BlocProvider.of<AddNoteCubit>(context).color =
                      kColorsList[index];
                  setState(() {});
                },
                child: ColorItem(
                  isSelected: currentIndex == index,
                  //el index da howa el index tb3 el item fe el itemBuilder
                  colors: kColorsList[index],
                ),
              ),
            );
          }),
    );
  }
}
