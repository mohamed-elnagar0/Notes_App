import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_note_cubits_state.dart';

class AddNoteCubitsCubit extends Cubit<AddNoteCubitsState> {
  AddNoteCubitsCubit() : super(AddNoteCubitsInitial());
}
