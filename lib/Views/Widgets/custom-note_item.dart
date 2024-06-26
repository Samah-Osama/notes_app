import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/edit_note_view.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.note,
  });
  @override
  final NoteModel note;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNotesView.id, arguments: note);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 16, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: const TextStyle(color: Colors.black, fontSize: 25),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    note.body,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.6),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 33,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 26),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    note.date,
                    style: TextStyle(
                        color: Colors.black.withOpacity(.6),
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
