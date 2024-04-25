import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/constant.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    try {
      var notes = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> noteList = notes.values.toList();
      emit(NotesSuccess(notes: noteList));
    } catch (e) {
      emit(NotesFailure(errMessage: e.toString()));
    }
  }
}
