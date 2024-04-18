import 'package:flutter/material.dart';
import 'package:notes_app/Views/Widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.title});
  @override
 final String title;
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30),
        ),
        CustomSearchIcon()
      ],
    );
  }
}
