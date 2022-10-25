import 'package:flutter/material.dart';
import 'package:ilu/model/property_model.dart';
import 'package:ilu/utils/colors.dart';
import 'package:ilu/widgets/property_details_bottomsheet.dart';
import 'package:ilu/widgets/round_icon_button_with_background.dart';

class PropertyDetailsScreen extends StatelessWidget {
  const PropertyDetailsScreen({super.key, required this.property});
  final Property property;

  @override
  Widget build(BuildContext context) {
    Size deviceScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
              image: AssetImage(property.propertyImage!), fit: BoxFit.fill),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
                top: 70,
                left: deviceScreen.width / 2.2,
                child: RoundIconButtonWithBackground(
                  icon: Icons.keyboard_arrow_left_rounded,
                  backgroundColor: Colors.grey.shade600,
                  iconColor: iluWhite,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )),
            Positioned(
              bottom: 50,
              left: deviceScreen.width / 2.9,
              child: GestureDetector(
                onPanStart:(details) {
                    showPropertyBottomSheet(context, property);
                }, 
                onTap: () {
                  showPropertyBottomSheet(context, property);
                },
                child: Row(
                  children: const [
                    Text(
                      "Swipe up for details",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Icon(
                      Icons.keyboard_arrow_up_rounded,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
