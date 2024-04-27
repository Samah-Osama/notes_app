import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Views/Widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.title, required this.icon, this.onPressed});
  @override
  final String title;
  final IconData icon;
  final void Function()? onPressed;

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 30),
        ),
        CustomIcon(
          icon: icon,
          onPressed: onPressed,
        )
      ],
    );
  }
}
