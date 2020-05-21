import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/http_exception.dart';
import 'data.dart';

class CovidData with ChangeNotifier {

  GlobalData globalDataObject;
  final List<CountryData> countryList = [];

  Future<void> fetchCovidData() async {
    const url = 'https://coronavirus-19-api.herokuapp.com/countries';
    try {
      final response =  await http.get(url);
      final extractedData = json.decode(response.body) as List<dynamic>;
      if(extractedData == null)
        return;
      print(extractedData);

      globalDataObject = GlobalData(
        totalCases: extractedData[0]["cases"],
        totalDeaths: extractedData[0]["deaths"],
        totalRecovered: extractedData[0]["recovered"],
      );
      extractedData.forEach((map) {
        if(map["country"] != "World") {
          countryList.add(CountryData(
            country: map["country"],
            totalCases: map["cases"],
            totalDeaths: map["deaths"],
            totalRecovered: map["recovered"],
            totalTests: map["totalTests"],
            critical: map["critical"],
          ));
        }
      });
      countryList.sort();
      notifyListeners();
    }
    catch (error) {
      throw (error);
    }
  }
}