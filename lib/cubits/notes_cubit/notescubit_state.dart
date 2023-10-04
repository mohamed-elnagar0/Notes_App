part of 'notescubit_cubit.dart';

@immutable
sealed class NotescubitState {}

final class NotesInitial extends NotescubitState {}

final class NotesLoading extends NotescubitState {}

final class NotesSuccsses extends NotescubitState {
  final List<NoteModel> notes;

  NotesSuccsses(this.notes);
}

final class NotesFaliure extends NotescubitState {
  final String errMessage;

  NotesFaliure({required this.errMessage});
}
