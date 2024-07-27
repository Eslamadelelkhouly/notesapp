import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  bool isLoading = false;

  AddNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccess());
      await NotesBox.add(note);
    } on Exception catch (e) {
      AddNoteFailure(errorMessage: e.toString());
    }
  }
}
