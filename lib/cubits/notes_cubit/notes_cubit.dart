import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/models/note_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() {
    try {
      var NotesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = NotesBox.values.toList();
      emit(NotesSucess(notes: notes));
    } catch (e) {
      emit(NotesFailure(errormessage: e.toString()));
    }
  }
}
