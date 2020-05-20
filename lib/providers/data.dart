import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

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
    this.id,
    this.totalCases,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered
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
    this.country,
    this.newConfirmed,
    this.totalConfirmed,
    this.newDeaths,
    this.totalDeaths,
    this.newRecovered,
    this.totalRecovered
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