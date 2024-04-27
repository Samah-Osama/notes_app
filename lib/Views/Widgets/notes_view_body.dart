import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Views/Widgets/custom_app_bar.dart';
import 'package:notes_app/Views/Widgets/custom_note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50, left: 24, right: 24),
      child: Column(
        children: [
          CustomAppBar(title: 'Notes', icon: Icons.search),
          Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}
