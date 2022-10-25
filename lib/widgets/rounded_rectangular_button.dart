import 'package:flutter/material.dart';

class RoundedRectangularButton extends StatelessWidget {
  const RoundedRectangularButton(
      {Key? key,
      required this.color,
      required this.text,
      required this.height,
      required this.width})
      : super(key: key);
  final Color color;
  final String text;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {},
      child: Container(
        height: height,
        decoration: ShapeDecoration(
            color: color,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        width: width,
        //  double.infinity,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
    );
  }
}
