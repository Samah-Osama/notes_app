import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    required this.icon,
    super.key, this.onPressed,
  });
  final IconData icon;
 final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Color(0xFF424242),
        borderRadius: BorderRadius.circular(11),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            icon,
            size: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
