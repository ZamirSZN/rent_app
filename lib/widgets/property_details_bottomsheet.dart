import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ilu/model/property_model.dart';
import 'package:ilu/utils/colors.dart';
import 'package:ilu/widgets/property_features_widget.dart';
import 'package:ilu/widgets/rounded_rectangular_button.dart';

import '../model/property_feature_model.dart';

Future<void> showPropertyBottomSheet(BuildContext context, Property property) {
  return showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.white.withOpacity(.1),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(35),
      topRight: Radius.circular(35),
    )),
    elevation: 0,
    context: context,
    builder: (context) {
      return ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        clipBehavior: Clip.antiAlias,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: PropertyBottomSheet(
            property: property,
          ),
        ),
      );
    },
  );
}

class PropertyBottomSheet extends StatelessWidget {
  const PropertyBottomSheet({super.key, required this.property});
  final Property property;

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> allPropertiesFeature = [
      {
        "featureName": "Bedrooms",
        "featureIcon": Icons.bed,
        "featureCount": "4",
      },
      {
        "featureName": "Bathrooms",
        "featureIcon": Icons.bathtub_rounded,
        "featureCount": "2",
      },
      {
        "featureName": "Parking",
        "featureIcon": Icons.drive_eta,
        "featureCount": "1",
      },
      {
        "featureName": "Big Garden",
        "featureIcon": Icons.forest_rounded,
        "featureCount": null,
      },
    ];

    List<PropertyFeature> propertyFeature = List<PropertyFeature>.from(
        allPropertiesFeature.map((model) => PropertyFeature.fromJson(model)));
    final Size deviceScreen = MediaQuery.of(context).size;
    return SizedBox(
      height: deviceScreen.height * .61,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: Center(
              child: SizedBox(
                  width: 50,
                  height: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Shopno Villa",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Kaduna, Nigeria",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 37),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Perfect for big/ small family. We will have all facility that every other apartment have, Also have some special facility that other apartment don't have ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 37),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Read More... ",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SizedBox(
              height: deviceScreen.height / 5,
              child: GridView.builder(
                itemCount: propertyFeature.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / .75,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                    child: PropertyFeatureCard(
                      featureIcon: propertyFeature[index].featureIcon!,
                      featureName: propertyFeature[index].featureName!,
                      featureCount: propertyFeature[index].featureCount,
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "\$200K",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "including all taxes",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                RoundedRectangularButton(
                  color: iluOrange,
                  text: "Continue",
                  height: 57,
                  width: deviceScreen.width * 0.5,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}
