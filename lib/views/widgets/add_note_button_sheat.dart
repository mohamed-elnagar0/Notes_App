import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubits/add_note_cubit.dart';
import '../../cubits/notes_cubit/notescubit_cubit.dart';
import 'add_note_form.dart';

class AddNoteButtonSheat extends StatelessWidget {
  const AddNoteButtonSheat({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).featchAllNotes();
            Navigator.pop(context);
          } else if (state is AddNoteFailure) {
            print('failed : errM = ${state.errMessage}');
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddNoteForme()),
            ),
          );
        },
      ),
    );
  }
}
