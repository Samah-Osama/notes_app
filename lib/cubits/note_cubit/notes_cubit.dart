import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? noteList;
  fetchAllNotes() {
    var notes = Hive.box<NoteModel>(kNoteBox);
    noteList = notes.values.toList();
    noteList!.sort((a, b) => b.date.compareTo(a.date));
    emit(NotesSuccess(notes: noteList!));
    print(noteList);
  }
}
