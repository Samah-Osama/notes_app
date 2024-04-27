import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/Widgets/custom-note_item.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
   
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
         List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).noteList ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, int) {
                return  Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: NoteItem(
                    note: notes[int],
                  ),
                );
              }),
        );
      },
    );
  }
}
