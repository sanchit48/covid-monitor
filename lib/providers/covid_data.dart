import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/http_exception.dart';
import 'data.dart';

class CovidData with ChangeNotifier {


  Future<void> fetchCovidData() async {

    const url = 'https://api.covid19api.com/summary';
    try {

      final response =  await http.get(url);
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      print(response.body);
      if(extractedData == null)
        return;
      final List<Data> loadedData = [];
      Map<String, int> map = extractedData['Global'];

      loadedData.add(
        Data(
          id: 'Global',
          newConfirmed: map['NewConfirmed'],
          totalConfirmed: map['TotalConfirmed'],
          newDeaths: map['NewDeaths'],
          totalDeaths: map['TotalDeaths'],
          newRecovered: map['NewRecovered'],
          totalRecovered: map['TotalRecovered'],
      ));

    }
    catch (error) {
      throw (error);
    }

  }

}