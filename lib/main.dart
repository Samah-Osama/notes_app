import 'package:flutter/material.dart';
import 'package:notes_app/Views/notes_view.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {NotesView.id: (context) => NotesView()},
      initialRoute: NotesView.id,
      theme: ThemeData(brightness: Brightness.dark),
    );
  }
}
