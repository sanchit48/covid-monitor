import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Data with ChangeNotifier {

  final String id;
  final int newConfirmed;
  final int totalConfirmed;
  final int newDeaths;
  final int totalDeaths;
  final int newRecovered;
  final int totalRecovered;

  Data({
    @required this.id,
    @required this.newConfirmed,
    @required this.totalConfirmed,
    @required this.newDeaths,
    @required this.totalDeaths,
    @required this.newRecovered,
    @required this.totalRecovered
  });

}