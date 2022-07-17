import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

enum ServiceType {
  Salon, Barber, Doctor
}

class Type {
  final int id;
  final String title;
  final String imageUrl;
  bool isSelected;
  final ServiceType serviceType;

  Type({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    this.isSelected=false,
    @required this.serviceType,
  });

  String get getServiceType {
    switch(serviceType)
    {
      case ServiceType.Salon:
        return 'Salon';
        break;
      case ServiceType.Barber:
        return 'Barber';
        break;
      case ServiceType.Doctor:
        return 'Doctor';
        break;
      default:
        return 'Unknown';
    }
  }
}

