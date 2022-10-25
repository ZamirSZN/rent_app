import 'package:flutter/material.dart';
import 'package:ilu/utils/global_variables.dart';

class OnboardingImageClipper extends StatelessWidget {
  const OnboardingImageClipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceScreen = MediaQuery.of(context).size;
    return ClipPath(
      clipper: OnboardingClipper(),
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(assetImage1),
                fit: BoxFit.fill)),
        height: deviceScreen.height * .6,
      ),
    );
  }
}

class OnboardingClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0.0, size.height / 1)
      ..lineTo(
        size.width / 1.25,
        size.height - 40,
      )
      ..quadraticBezierTo(
          size.width / 1.1, size.height - 45, size.width, size.height)
      // ..quadraticBezierTo(
      //     size.width / 1.1, size.height - 100, size.width, size.height)
      ..lineTo(size.width, 0.0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
