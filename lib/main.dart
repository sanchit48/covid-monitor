import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './app.dart';

void main() {
   SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.black,
    )
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(CovidMonitor());
}