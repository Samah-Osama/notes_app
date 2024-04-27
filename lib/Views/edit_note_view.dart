import 'package:flutter/material.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/Widgets/edit_note_view_body.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});
  @override
  static String id = 'EditNotesView';
  Widget build(BuildContext context) {
    NoteModel notes = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(
      body: EditNoteViewBody(
        note: notes,
      ),
    );
  }
}
