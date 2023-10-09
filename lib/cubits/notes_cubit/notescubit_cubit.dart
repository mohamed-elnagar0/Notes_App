import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';
import '../../constant.dart';
part 'notescubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesInitial());

  FeatchAllNotes() {
    emit(NotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccsses(notes: notes));
    } catch (e) {
      emit(NotesFaliure(e.toString()));
    }
  }
}
