import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/http_exception.dart';
import 'data.dart';

class CovidData with ChangeNotifier {

  List<String> _globalList = [

    'newConfirmed',
    'totalConfirmed',
    'newDeaths',
    'totalDeaths',
    'newRecovered',
    'totalRecovered'

  ];

  Map<String, dynamic> _globalMap = {

    'newConfirmed': 10000,
    'totalConfirmed': 10000,
    'newDeaths': 10000,
    'totalDeaths': 10000,
    'newRecovered': 10000,
    'totalRecovered': 10000,

  };

  var _globalData = GlobalData(

    totalCases: 1000000,
    totalDeaths: 1000000,
    totalRecovered: 1000000,

  );

   GlobalData get globalData {
     return _globalData;
   }

   List<CountryWiseData> _countryWiseList = [

     CountryWiseData(
       country: 'India',
       newConfirmed: 10000,
       totalConfirmed: 10000,
       newDeaths: 10000,
       totalDeaths: 10000,
       newRecovered: 10000,
       totalRecovered: 10000,
     ),

     CountryWiseData(
       country: 'USA',
       newConfirmed: 10000,
       totalConfirmed: 10000,
       newDeaths: 10000,
       totalDeaths: 10000,
       newRecovered: 10000,
       totalRecovered: 10000,
     ),

     CountryWiseData(
       country: 'Japan',
       newConfirmed: 10000,
       totalConfirmed: 10000,
       newDeaths: 10000,
       totalDeaths: 10000,
       newRecovered: 10000,
       totalRecovered: 10000,
     ),

     CountryWiseData(
       country: 'Australia',
       newConfirmed: 10000,
       totalConfirmed: 10000,
       newDeaths: 10000,
       totalDeaths: 10000,
       newRecovered: 10000,
       totalRecovered: 10000,
     ),

     CountryWiseData(
       country: 'China',
       newConfirmed: 10000,
       totalConfirmed: 10000,
       newDeaths: 10000,
       totalDeaths: 10000,
       newRecovered: 10000,
       totalRecovered: 10000,
     ),

     CountryWiseData(
       country: 'Africa',
       newConfirmed: 10000,
       totalConfirmed: 10000,
       newDeaths: 10000,
       totalDeaths: 10000,
       newRecovered: 10000,
       totalRecovered: 10000,
     ),

     CountryWiseData(
       country: 'United Kingdom',
       newConfirmed: 10000,
       totalConfirmed: 10000,
       newDeaths: 10000,
       totalDeaths: 10000,
       newRecovered: 10000,
       totalRecovered: 10000,
     ),
   ];

   List<CountryWiseData> get countryWiseList {
     return _countryWiseList;
   }

   Map<String, dynamic> get globalMap {
     return _globalMap;
   }

   List<String> get globalList {
     return _globalList;
   }

   @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }

  // Future<void> fetchCovidData() async {
  //   const url = 'https://api.covid19api.com/summary';
  //   try {
  //     final response =  await http.get(url);
  //     final extractedData = json.decode(response.body) as Map<String, dynamic>;
  //     if(extractedData == null)
  //       return;
  //     final List<Data> loadedData = [];
  //     Map<String, dynamic> map = extractedData['Global'];
  //    // print(map);
  //     loadedData.add(
  //       Data(
  //         id: 'Global',
  //         newConfirmed: map['NewConfirmed'],
  //         totalConfirmed: map['TotalConfirmed'],
  //         newDeaths: map['NewDeaths'],
  //         totalDeaths: map['TotalDeaths'],
  //         newRecovered: map['NewRecovered'],
  //         totalRecovered: map['TotalRecovered'],
  //     ));
  //     //print(loadedData[0]);
  //     notifyListeners();
  //   }
  //   catch (error) {
  //     throw (error);
  //   }
  // }

}