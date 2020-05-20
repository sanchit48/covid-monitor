import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/http_exception.dart';
import 'data.dart';

class HelplineData with ChangeNotifier {

   List<Helpline> _helpLineList = [

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

   ];

   List<Helpline> get helplineList {
     return _helpLineList;
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