import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ilu/screens/home_screen.dart';
import 'package:ilu/utils/colors.dart';
import 'package:ilu/utils/iluu_icons.dart';
import 'package:ilu/widgets/rounded_rectangular_button.dart';

import '../widgets/onboarding_image_clipper.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size deviceScreen = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      body: Column(
        children: [
          const OnboardingImageClipper(),
          SizedBox(
              height: deviceScreen.height / 3,
              width: deviceScreen.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const FractionallySizedBox(
                      widthFactor: 0.8,
                      child: Text(
                        "Perfect choice for your future",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                    ),
                    FractionallySizedBox(
                      widthFactor: 0.8,
                      child: Text(
                        "Our properties the masterpiece for every client with lasting value",
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade500),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RoundedRectangularButton(
                          color: iluOrange,
                          text: "Continue",
                          height: 53,
                          width: deviceScreen.width * .65,
                        ),
                        const SizedBox(
                          width: 13,
                        ),
                        Container(
                            height: 50,
                            width: 50,
                            decoration: const ShapeDecoration(
                              shape: CircleBorder(),
                              color: iluDeepGreen,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                IluuIcons.google,
                                size: 27,
                              ),
                              color: iluWhite,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const HomeScreen(),
                                ));
                              },
                            )

                            // const Icon(
                            //   IluuIcons.google,
                            //   color: iluWhite,
                            //   size: 27,
                            // ),
                            )
                      ],
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
