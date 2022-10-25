import 'dart:convert';

import 'package:flutter/material.dart';

PropertyKind propertyFromJson(String str) => PropertyKind.fromJson(json.decode(str));

class PropertyKind {
  String? propertyType;
  IconData? propertyIcon;
  int? propertyResult;

  PropertyKind({
    this.propertyType,
    this.propertyIcon,
    this.propertyResult,
  });

  PropertyKind.fromJson(Map<String, dynamic> json) {
    propertyType = json['propertyType'];
    propertyIcon = json['propertyIcon'];
    propertyResult = json['propertyResult'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['propertyType'] = propertyType;
    data['propertyIcon'] = propertyIcon;
    data['propertyResult'] = propertyResult;

    return data;
  }
}
