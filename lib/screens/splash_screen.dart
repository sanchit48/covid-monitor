import 'package:flutter/material.dart';
import '../helpers/sizes.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {

  static const routeName = '/splash-screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, "/login");
    });
  }

  @override
  Widget build(BuildContext context) {

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);
    var fullDeviceHeight = getFullDeviceHeight(context);
    var fullDeviceWidth = getFullDeviceWidth(context);

    return Scaffold(
      backgroundColor: Color(0xff1e88e5),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: deviceHeight*1.04,
              width: fullDeviceWidth,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Color(0xff6a1b9a)]
                ),
              ),
            ),
            Positioned(
              width: fullDeviceWidth,
              top: (fullDeviceHeight - fullDeviceWidth)/2,
              child: Column(
                children: <Widget>[
                  Container(
                    height: deviceHeight*0.14,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset(
                      'assets/images/app_logo.png'
                    )
                  ),
                  SizedBox(height: deviceHeight*0.01,),
                  Container(
                    height: deviceHeight*0.065,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Image.asset(
                      'assets/images/ardra.png'
                    )
                  ),
                  SizedBox(
                    height: deviceHeight*0.01,
                  ),
                  Text(
                    'WORKS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: deviceHeight*0.031,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              height: fullDeviceWidth,
              width: fullDeviceWidth,
              bottom: -fullDeviceWidth/1.25,

              child: Container(
                child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Powered by ",
                      style: TextStyle(
                        fontSize: deviceHeight*0.025,
                        color: Colors.white,
                        fontFamily: 'Montserrat'
                      ),
                    ),
                    TextSpan(
                      text: "Ardra Cloud",
                      style: TextStyle(
                        color: Color(0xff90caf9),
                        fontFamily: "Montserrat",
                        fontSize: deviceHeight*0.025,
                      )
                    ),
                    TextSpan(
                      text: "\nBeyDest Pvt. Ltd.",
                      style: TextStyle(
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w900,
                        fontSize: deviceHeight*0.025,
                      )
                    ),
                  ]
                ),
                textAlign: TextAlign.center,
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}