import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add_note_cubits/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForme extends StatefulWidget {
  const AddNoteForme({
    super.key,
  });

  @override
  State<AddNoteForme> createState() => _AddNoteFormeState();
}

class _AddNoteFormeState extends State<AddNoteForme> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomTextField(
            onSaved: (p0) => title = p0,
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (p0) => subTitle = p0,
            hintText: 'content',
            maxLines: 10,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            isLoading: State is AddNoteLoading ? true : false,
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var curentDate = DateTime.now();
                var formatedCurentDate = DateFormat.yMMMEd().format(curentDate);
                var noteModel = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  data: formatedCurentDate,
                  color: Colors.yellow.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
