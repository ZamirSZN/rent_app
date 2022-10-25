import 'dart:convert';

Property propertyFromJson(String str) => Property.fromJson(json.decode(str));

class Property {
  String? cityName;
  String? countryName;
  String? propertyImage;
  String? distance;

  Property({
    this.cityName,
    this.countryName,
    this.propertyImage,
    this.distance,
  });

  Property.fromJson(Map<String, dynamic> json) {
    cityName = json['cityName'];
    countryName = json['countryName'];
    propertyImage = json['propertyImage'];
    distance = json['distance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['cityName'] = cityName;
    data['countryName'] = countryName;
    data['propertyImage'] = propertyImage;
    data['distance'] = distance;

    return data;
  }
}
