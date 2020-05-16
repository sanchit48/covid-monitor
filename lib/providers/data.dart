import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class GlobalData with ChangeNotifier {

  final String id;
  final int totalCases;
  final int newConfirmed;
  final int totalConfirmed;
  final int newDeaths;
  final int totalDeaths;
  final int newRecovered;
  final int totalRecovered;

  GlobalData({
    @required this.id,
    @required this.totalCases,
    @required this.newConfirmed,
    @required this.totalConfirmed,
    @required this.newDeaths,
    @required this.totalDeaths,
    @required this.newRecovered,
    @required this.totalRecovered
  });

}

class CountryWiseData with ChangeNotifier {

  final String country;
  final int newConfirmed;
  final int totalConfirmed;
  final int newDeaths;
  final int totalDeaths;
  final int newRecovered;
  final int totalRecovered;

  CountryWiseData({
    @required this.country,
    @required this.newConfirmed,
    @required this.totalConfirmed,
    @required this.newDeaths,
    @required this.totalDeaths,
    @required this.newRecovered,
    @required this.totalRecovered
  });

}