import 'dart:convert';

import 'package:flutter/material.dart';

PropertyFeature propertyFromJson(String str) => PropertyFeature.fromJson(json.decode(str));

class PropertyFeature {
  String? featureName;
  IconData? featureIcon;
  String? featureCount;

  PropertyFeature({
    this.featureName,
    this.featureIcon,
    this.featureCount,
  });

    PropertyFeature.fromJson(Map<String, dynamic> json) {
    featureName = json['featureName'];
    featureIcon = json['featureIcon'];
    featureCount = json['featureCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['featureName'] = featureName;
    data['featureIcon'] = featureIcon;
    data['featureCount'] = featureCount;

    return data;
  }
}
