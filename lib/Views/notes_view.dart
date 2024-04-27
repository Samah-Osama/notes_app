import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Views/Widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/Views/Widgets/notes_view_body.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});
  static String id = 'NotesView';

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        backgroundColor: kPrimaryColor,
        shape: const OvalBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
