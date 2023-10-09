import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simble_bloc_observer.dart';
import 'package:notes_app/views/notes_view.dart';
import 'cubits/notes_cubit/notescubit_cubit.dart';

void main() async {
  Bloc.observer = SimbleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        darkTheme: ThemeData.dark(),
        home: const NotesView(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
