import 'package:flutter/material.dart';
import 'package:ilu/utils/colors.dart';

class PropertyIndexWidget extends StatelessWidget {
  const PropertyIndexWidget(
      {super.key,
      required this.onPressed,
      required this.cityName,
      required this.countryName,
      required this.distance,
      required this.imageUrl});
  final Function() onPressed;
  final String cityName;
  final String countryName;
  final String distance;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          color: iluGrey,
          height: 200,
          width: 190,
          child: Row(
            children: [
              Container(
                  height: 200,
                  width: 60,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: ShapeDecoration(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    image: DecorationImage(
                        image: AssetImage(imageUrl), fit: BoxFit.fill),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      cityName,
                      style: const TextStyle(fontSize: 18),
                    ),
                    Text(
                      countryName,
                      style: const TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                          size: 18,
                        ),
                        Text(
                          '$distance km',
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
