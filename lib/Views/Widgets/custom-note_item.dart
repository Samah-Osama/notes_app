import 'package:flutter/material.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({ 
    super.key,
  });
  @override
  // final List<NoteModel> note;
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNotesView.id);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 16, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: const Text(
                  'Flutter Tips',
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    'Hello To My World , let me take u to  a journey to the sky ',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.6), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
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
                    'May 21 , 2022',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.6), fontSize: 17),
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
