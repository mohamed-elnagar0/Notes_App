import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';
import 'widgets/add_note_button_sheat.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              context: context,
              builder: (context) {
                return const AddNoteButtonSheat();
              });
        },
        backgroundColor: Colors.grey[850],
        child: const Icon(Icons.add),
      ),
    );
  }
}
