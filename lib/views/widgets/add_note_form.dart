import 'package:flutter/material.dart';

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
