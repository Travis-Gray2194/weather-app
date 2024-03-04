import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

mixin GeoCoderService {
  Future<String?> getAddressFromCoordinate(double lat, double lng);
}

class GeoCoderServiceImpl implements GeoCoderService {
  const GeoCoderServiceImpl();
  @override
  Future<String?> getAddressFromCoordinate(double lat, double lng) async {
    try {
      final placemarks = await placemarkFromCoordinates(lat, lng);
      debugPrint(placemarks.toString());
      final place = placemarks[0];
      return '${place.administrativeArea}, ${place.country}';
    } catch (e) {
      return 'Failed to get address';
    }
  }
}
