import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_button.dart';
import 'package:notes_app/Views/Widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          children: [
            CustomeTextField(
              hinttext: 'Title',
            ),
            const SizedBox(height: 20),
            CustomeTextField(
              hinttext: 'Content',
              maxLines: 5,
            ),
            const SizedBox(height: 100),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
