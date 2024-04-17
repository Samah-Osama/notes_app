import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[300],
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
