import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/screens/country_wise_data_screen.dart';
import 'package:covid_tracker/screens/global_data_screen.dart';
import 'package:covid_tracker/screens/helpline_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavigationBar extends StatefulWidget {

  static const routeName = '/navigation-bar';

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {

  int _curIndex = 0;

  @override
  Widget build(BuildContext context) {

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return Scaffold(

      body: IndexedStack(

        index: _curIndex,
        children: [
          GlobalDataScreen(),
          CountryWiseDataScreen(),
          HelplineScreen(),
        ],

      ),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInSine,
        height: 60,

        color: Color(0xff1b5e20),
        index: _curIndex,
        items: <Widget>[
         Container(
           child: Icon(Icons.chrome_reader_mode, size: deviceHeight*0.036, color: Colors.white
            )
          ),

          Container(
            //margin: EdgeInsets.only(top: 50),
            child: Icon(Icons.ac_unit, size: deviceHeight*0.036, color: Colors.white
            )
          ),

          Container(
            //margin: EdgeInsets.only(top: 50),
            child: Icon(Icons.account_box, size: deviceHeight*0.036, color: Colors.white)),

        ],
        onTap: (index) {
         setState(() {
            _curIndex = index;
            // if (index == 0) {
            //   // _isNewsSelected = true;
            //   // _isBusinessSelected = false;
            //   // _isProfileSelected = false;
            //   //Navigator.pushReplacementNamed(context, NewsScreen.routeName);
            // }
            // else if (index == 1) {
            //   // _isNewsSelected = false;
            //   // _isBusinessSelected = true;
            //   // _isProfileSelected = false;
            // }
            // else {
            //   // _isNewsSelected = false;
            //   // _isProfileSelected  = false;
            //   // _isBusinessSelected = true;
            // }
          });

        }

      ),

    );
  }
}