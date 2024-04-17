import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom-note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, int) {
            return  Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child:  NoteItem(),
            );
          }),
    );
  }
}
