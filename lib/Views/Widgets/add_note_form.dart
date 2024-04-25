import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/note_model.dart';
import 'package:notes_app/Views/Widgets/custom_button.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';
import 'package:notes_app/add_note_cubit/cubit/add_note_cubit.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  //use to show an error to user if he intered something wrong

  String? title, body;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomeTextFormField(
            onSaved: (value) {
              title = value;
            },
            hinttext: 'Title',
          ),
          const SizedBox(height: 20),
          CustomeTextFormField(
            onSaved: (value) {
              body = value;
            },
            hinttext: 'Content',
            maxLines: 5,
          ),
          const SizedBox(height: 100),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = NoteModel(
                    title: title!,
                    body: body!,
                    date: DateTime.now().toString(),
                    color: Colors.amber.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          )
        ],
      ),
    );
  }
}
