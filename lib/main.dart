import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './app.dart';

void main() {
   SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Color(0xff1b5e20),
    )
  );
  WidgetsFlutterBinding.ensureInitialized();
  runApp(CovidMonitor());
}