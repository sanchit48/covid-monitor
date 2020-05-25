import 'package:covid_tracker/models/http_exception.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'data.dart';

class CovidData with ChangeNotifier {

  bool isError = false;
  GlobalData globalDataObject;
  final List<CountryData> countryList = [];

  Future<void> fetchCovidData() async {

    const url = 'https://coronavirus-19-api.herokuapp.com/countrie';

    try{
      final response =  await http.get(url);
      print("good");

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
              country: map['country'],
              totalCases: map['cases'],
              totalDeaths: map['deaths'],
              totalRecovered: map['recovered'],
              totalTests: map['totalTests'],
              critical: map['critical'],
            ));
          }
        });
    notifyListeners();

    }
    catch(error) {
      print("bad");
      isError = true;
      notifyListeners();
      throw "Some Error occured";

    }
  }

}