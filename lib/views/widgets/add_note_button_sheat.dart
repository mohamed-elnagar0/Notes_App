import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'custom_button.dart';

class AddNoteButtonSheat extends StatelessWidget {
  const AddNoteButtonSheat({super.key});
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'content',
              maxLines: 10,
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
