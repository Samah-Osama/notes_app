import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/Widgets/custom_app_bar.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';

import '../../constant.dart';
import 'custom_colors_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  @override
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, body;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.body = body ?? widget.note.body;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 30),
          CustomeTextFormField(
            onChanged: (value) {
              title = value;
            },
            hinttext: widget.note.title,
          ),
          const SizedBox(height: 30),
          CustomeTextFormField(
            onChanged: (value) {
              body = value;
            },
            hinttext: widget.note.body,
            maxLines: 6,
          ),
          const SizedBox(
            height: 30,
          ),
          EditNoteColorsList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

int currentIndex = 0;

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  @override
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
                  widget.note.color = kColorsList[index].value;

                  setState(() {});
                },
                child: ColorItem(
                  isSelected: currentIndex == index,
                  colors: kColorsList[index],
                ),
              ),
            );
          }),
    );
  }
}
