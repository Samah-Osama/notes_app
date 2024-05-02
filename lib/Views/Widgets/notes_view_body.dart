import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Views/Widgets/custom_app_bar.dart';
import 'package:notes_app/Views/Widgets/custom_note_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 24, right: 24),
      child: Column(
        children: [
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
            onPressed: () {
              showSearch(context: context, delegate: DataSearch());
            },
          ),
          const Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
      // throw UnimplementedError(),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back));
    // throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Text('data');
    // throw UnimplementedError();
  }
}
