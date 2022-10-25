import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ilu/model/property_kind_model.dart';
import 'package:ilu/model/property_model.dart';
import 'package:ilu/screens/property_details_screen.dart';
import 'package:ilu/utils/colors.dart';
import 'package:ilu/utils/global_variables.dart';
import 'package:ilu/widgets/property_index_widget.dart';
import 'package:ilu/widgets/property_kind_widget.dart';
import 'package:ilu/widgets/round_icon_button_with_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> allPropertiesKind = [
      {
        "propertyType": "House",
        "propertyIcon": Iconsax.house4,
        "propertyResult": 9029,
      },
      {
        "propertyType": "Condo",
        "propertyIcon": Icons.apartment_rounded,
        "propertyResult": 7098,
      },
      {
        "propertyType": "Apartment",
        "propertyIcon": Icons.house_rounded,
        "propertyResult": 9805,
      },
      {
        "propertyType": "Cottage",
        "propertyIcon": Icons.cottage_rounded,
        "propertyResult": 1229,
      },
    ];

    List<PropertyKind> propertiesKind = List<PropertyKind>.from(
        allPropertiesKind.map((model) => PropertyKind.fromJson(model)));

    List<Map<String, dynamic>> allProperties = [
      {
        "cityName": "Kaduna",
        "countryName": "Nigeria",
        "propertyImage": assetImage2,
        "distance": "1.5",
      },
      {
        "cityName": "Kaduna",
        "countryName": "Nigeria",
        "propertyImage": assetImage3,
        "distance": "1.2",
      },
      {
        "cityName": "Kaduna",
        "countryName": "Nigeria",
        "propertyImage": assetImage1,
        "distance": "2.5",
      },
    ];

    List<Property> properties = List<Property>.from(
        allProperties.map((model) => Property.fromJson(model)));

    final Size deviceScreen = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: Container(
          height: 150,
          color: iluOrange,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  height: 60,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(
                              Iconsax.gps,
                              color: iluWhite,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Location",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Kaduna",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 17),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: iluWhite,
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: 90,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                      child: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
                        backgroundColor: iluDeepGreen,
                        selectedItemColor: iluWhite,
                        items: const [
                          BottomNavigationBarItem(
                            label: "",
                            icon: Icon(Icons.my_location),
                          ),
                          BottomNavigationBarItem(
                            label: "",
                            icon: Icon(
                              Iconsax.star,
                              color: Colors.white,
                            ),
                          ),
                          BottomNavigationBarItem(
                            label: "",
                            icon: Icon(
                              Iconsax.setting,
                              color: Colors.white,
                            ),
                          ),
                          BottomNavigationBarItem(
                            label: "",
                            icon: Icon(
                              Iconsax.messages,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 0,
              top: 10,
              right: 5,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: SizedBox(
                    // width: 250,
                    child: Text(
                      "What are\nyou looking for?",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  // width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RoundIconButtonWithBackground(
                        icon: Iconsax.search_normal,
                        backgroundColor: iluGrey,
                        iconColor: Colors.black,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      RoundIconButtonWithBackground(
                        icon: Iconsax.notification,
                        backgroundColor: iluGrey,
                        iconColor: Colors.black,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: SizedBox(
              height: deviceScreen.height / 2.5,
              child: GridView.builder(
                itemCount: propertiesKind.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2 / 1.6,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return PropertyKindWidget(
                      icon: propertiesKind[index].propertyIcon!,
                      propertyType: propertiesKind[index].propertyType!,
                      resultCount: propertiesKind[index].propertyResult!);
                },
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 17),
              child: Text(
                "Near by",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: deviceScreen.height / 6,
            width: deviceScreen.width,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: properties.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                  child: PropertyIndexWidget(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return PropertyDetailsScreen(
                              property: properties[index],
                            );
                          },
                        ));
                      },
                      cityName: properties[index].cityName!,
                      countryName: properties[index].countryName!,
                      distance: properties[index].distance!,
                      imageUrl: properties[index].propertyImage!),
                );
              },
            ),
          )
        ]),
      ),
    );
  }
}
