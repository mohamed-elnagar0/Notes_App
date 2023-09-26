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
        child: AddNoteForme(),
      ),
    );
  }
}

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
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
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
