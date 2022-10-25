import 'package:flutter/material.dart';

class RoundIconButtonWithBackground extends StatelessWidget {
  final IconData icon;
  final Color backgroundColor;
  final Color iconColor;
  final Function() onPressed;

  const RoundIconButtonWithBackground(
      {Key? key,
      required this.icon,
      required this.backgroundColor,
      required this.iconColor,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: backgroundColor,
        ),
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
    );
  }
}
