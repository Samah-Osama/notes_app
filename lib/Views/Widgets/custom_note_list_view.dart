import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom-note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, int) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: NoteItem(),
        );
      }),
    );
  }
}
