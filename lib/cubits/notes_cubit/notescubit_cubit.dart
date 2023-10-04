import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'notescubit_state.dart';

class NotescubitCubit extends Cubit<NotescubitState> {
  NotescubitCubit() : super(NotesInitial());
}
