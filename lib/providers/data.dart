import 'package:flutter/foundation.dart';

class GlobalData with ChangeNotifier {

   int totalCases;
   int totalDeaths;
   int totalRecovered;

  GlobalData({
    this.totalCases,
    this.totalDeaths,
    this.totalRecovered
  });

}

class CountryData with ChangeNotifier {

   dynamic country;
   dynamic totalCases;
   dynamic totalDeaths;
   dynamic totalRecovered;
   dynamic activeCases;
   dynamic totalTests;
   dynamic critical;

  CountryData({
    this.country,
    this.totalCases,
    this.totalDeaths,
    this.totalRecovered,
    this.activeCases,
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