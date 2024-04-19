import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/Views/Widgets/notes_view_body.dart';
import 'package:notes_app/constant.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
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
