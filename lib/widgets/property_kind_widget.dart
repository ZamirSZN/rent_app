import 'package:flutter/material.dart';
import 'package:ilu/utils/colors.dart';
import 'package:ilu/widgets/round_icon_button_with_background.dart';

class PropertyKindWidget extends StatelessWidget {
  const PropertyKindWidget(
      {super.key,
      required this.icon,
      required this.propertyType,
      required this.resultCount});
  final IconData icon;
  final String propertyType;
  final int resultCount;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: iluGrey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 5,
            ),
            RoundIconButtonWithBackground(
              icon: icon,
              backgroundColor: Colors.white24,
              iconColor: Colors.black,
              onPressed: () {},
            ),
            Text(
              propertyType,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "${resultCount.toString()} results",
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
