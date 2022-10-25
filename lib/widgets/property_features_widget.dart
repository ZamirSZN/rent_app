import 'package:flutter/material.dart';
import 'package:ilu/utils/colors.dart';

class PropertyFeatureCard extends StatelessWidget {
  const PropertyFeatureCard(
      {super.key,
      required this.featureIcon,
      required this.featureName,
      this.featureCount});
  final IconData featureIcon;
  final String featureName;
  final String? featureCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(.3),
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            featureIcon,
            color: iluWhite,
          ),
          Text(
            featureName,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
          featureCount == null
              ? Container()
              : Container(
                  height: 20,
                  width: 20,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(), color: Colors.white),
                  child: Center(
                    
                    child: Text(
                      featureCount!,
                      style: const TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
