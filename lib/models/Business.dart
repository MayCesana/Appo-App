import 'package:Appo/models/type.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Business {
  final int id;
  final String name;
  final String owner;
  final String city;
  final String address;
  final String phoneNumber;
  final String imageUrl;
  final ServiceType serviceType;

  const Business({
    @required this.id,
    @required this.name,
    @required this.owner,
    @required this.city,
    @required this.address,
    @required this.phoneNumber,
    @required this.imageUrl,
    @required this.serviceType
  });

  String get Type {
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

