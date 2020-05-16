import 'package:covid_tracker/providers/covid_data.dart';
import './providers/data.dart';
import 'package:covid_tracker/screens/covid_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CovidTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CovidData(),
        ),
      ],
      
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shareApp',
        color: Color(0xff1b5e20),
        routes: {

          '/': (ctx) => CovidDataScreen(),

        },
      ),

    );
  }
}