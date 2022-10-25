import 'package:flutter/material.dart';
import 'package:ilu/screens/onboarding_screen.dart';
import 'package:ilu/utils/colors.dart';

void main() {
  runApp(const IluApp());
}

class IluApp extends StatelessWidget {
  const IluApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iluu',
      theme: ThemeData(
        fontFamily: "PulpDisplay",
        primaryColor: iluDeepGreen,
      ),
      home: const OnboardingScreen(),
    );
  }
}
