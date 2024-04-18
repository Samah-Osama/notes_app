import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({this.textInputType, this.onChanged, this.hinttext , this.maxLines});
final  String? hinttext;
 final Function(String)? onChanged;
 final TextInputType? textInputType;
final  int? maxLines ;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
