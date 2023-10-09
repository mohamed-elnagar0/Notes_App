part of 'notescubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesInitial extends NotesCubitState {}

final class NotesLoading extends NotesCubitState {}

final class NotesSuccsses extends NotesCubitState {
  final List<NoteModel> notes;

  NotesSuccsses(this.notes);
}

final class NotesFaliure extends NotesCubitState {
  final String errMessage;

  NotesFaliure(this.errMessage);
}
