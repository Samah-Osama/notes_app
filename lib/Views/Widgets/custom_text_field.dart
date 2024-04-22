import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomeTextFormField extends StatelessWidget {
  const CustomeTextFormField(
      {this.textInputType,
      this.onChanged,
      this.hinttext,
      this.maxLines,
      this.onSaved});
  final String? hinttext;
  final Function(String)? onChanged;
  final TextInputType? textInputType;
  final int? maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      keyboardType: textInputType,
      onChanged: onChanged,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hinttext,
        enabledBorder: BuildBorder(Colors.white),
        focusedBorder: BuildBorder(kPrimaryColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  OutlineInputBorder BuildBorder(Color) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
