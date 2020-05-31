import 'package:covid_tracker/providers/covid_data.dart';
import 'package:covid_tracker/providers/helpline.dart';
import 'package:covid_tracker/screens/about_screen.dart';
import 'package:covid_tracker/screens/country_screen.dart';
import 'package:covid_tracker/screens/country_wise_data_screen.dart';
import 'package:covid_tracker/screens/helpline_screen.dart';
import 'package:covid_tracker/widgets/navigation_bar.dart';
import 'package:covid_tracker/screens/global_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CovidMonitor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CovidData(),
        ),
        ChangeNotifierProvider.value(
          value: HelplineData(),
        ),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'shareApp',
        color: Color(0xff1b5e20),
        routes: {
          '/': (ctx) => NavigationBar(),
          GlobalDataScreen.routeName: (ctx) => GlobalDataScreen(),
          CountryWiseDataScreen.routeName: (ctx) => CountryWiseDataScreen(),
          CountryScreen.routeName: (ctx) => CountryScreen(),
          HelplineScreen.routeName: (ctx) => HelplineScreen(),
          AboutScreen.routeName: (ctx) =>  AboutScreen(),
        },
      ),

    );
  }
}