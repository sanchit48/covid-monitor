import 'package:covid_tracker/helpers/sizes.dart';
import 'package:flutter/material.dart';
class AboutScreen extends StatelessWidget {

  static const routeName = '/about-screen';

  @override
  Widget build(BuildContext context) {

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return Scaffold(

      appBar: AppBar(
        title: Text(
          'About',
          style: TextStyle(
            color: Colors.white,
            fontSize: deviceHeight*0.034,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1b5e20)
      ),

      body: Column(
          children: <Widget> [

            SizedBox(
              height: deviceHeight*0.02,
            ),

            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'COVID MONITOR',
                    style: TextStyle(
                      fontSize: deviceHeight*0.04,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    )

                  ),
                  TextSpan(
                    text: '\nDeveloped by Sanchit Khare',
                    style: TextStyle(
                      fontSize: deviceHeight*0.021,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    )
                  ),

                ]

              )
            ),

            Container(



            ),
            
          ]
        ),
    );
  }
}