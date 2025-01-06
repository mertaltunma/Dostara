import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

List<LatLng> newCustomFunction(List<VetLocationsRow> records) {
  // There is a column named coordinates in VetLocations table with data type of numeric array. The first value is latitude and the second value is longitude. Take the values from that column and add the LatLng typed array. return array
  List<LatLng> coordinatesList = [];

  for (var record in records) {
    List<num> coordinates = record.coordinates;
    if (coordinates.length >= 2) {
      double latitude = coordinates[0].toDouble();
      double longitude = coordinates[1].toDouble();
      LatLng latLng = LatLng(latitude, longitude);
      coordinatesList.add(latLng);
    }
  }

  return coordinatesList;
}

List<LatLng> newCustomFunction2(List<ShelterLocationsRow> records) {
  List<LatLng> coordinatesList = [];

  for (var record in records) {
    List<num> coordinates = record.coordinates;
    if (coordinates.length >= 2) {
      double latitude = coordinates[0].toDouble();
      double longitude = coordinates[1].toDouble();
      LatLng latLng = LatLng(latitude, longitude);
      coordinatesList.add(latLng);
    }
  }

  return coordinatesList;
}

String? increaseAnimalNumber(String? animalNumber) {
  // I need a functon that takes value as string, turn it integer, increase it by one, and turn it again string. and return result.
  if (animalNumber == null) {
    return null;
  }

  int number = int.tryParse(animalNumber) ?? 0;
  number++;
  return number.toString();
}

String? decreaseAnimal(String? animalNumber) {
  // I  need a function that takes string value, return it to interger, decrease it by one, then turn it to string, and return th evalue.
  // I need a function that takes a string value, converts it to an integer, decreases it by one, and then converts it back to a string before returning the value.
  if (animalNumber == null) {
    return null;
  }

  int number = int.tryParse(animalNumber) ?? 0;
  number--;
  return number.toString();
}

int? increaseAdopted(String? adoptedNumber) {
  // I  need a function that takes string value, return it to interger, increase it by one, then turn it to string, and return th evalue.
  // I need a function that takes a string value, converts it to an integer, increases it by one, and then converts it back to a string before returning the value.
  if (adoptedNumber == null) {
    return null;
  }

  int number = int.tryParse(adoptedNumber) ?? 0;
  number++;
  return number;
}
