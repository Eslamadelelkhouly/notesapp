part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {
  AddNote(NoteModel note) {
    
  }
}

final class AddNoteLoading extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {}

final class AddNoteFailure extends AddNoteState {
  final String errorMessage;

  AddNoteFailure({
    required this.errorMessage,
  });
}
