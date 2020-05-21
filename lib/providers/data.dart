import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class GlobalData with ChangeNotifier {

  final int totalCases;
  final int totalDeaths;
  final int totalRecovered;

  GlobalData({
    this.totalCases,
    this.totalDeaths,
    this.totalRecovered
  });

}

class CountryData with ChangeNotifier {

  final String country;
  final int totalCases;
  final int totalDeaths;
  final int totalRecovered;
  final int totalTests;
  final int critical;

  CountryData({
    this.country,
    this.totalCases,
    this.totalDeaths,
    this.totalRecovered,
    this.totalTests,
    this.critical,
  });

}

class Helpline with ChangeNotifier {

  final String stateName;
  final String helplineNumber;

  Helpline({
    this.stateName,
    this.helplineNumber
   });

}