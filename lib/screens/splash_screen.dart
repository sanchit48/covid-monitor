import 'package:flutter/material.dart';
import '../helpers/sizes.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {

  static const routeName = '/splash-screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<Offset> offsetAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(milliseconds: 2500),
      vsync: this,
    )..forward();
    offsetAnimation = Tween<Offset>(
      begin: Offset(-3, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: Curves.elasticInOut,
    ));
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, "/navigation-bar");
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
      body: Container(
          alignment: Alignment.center,
          height: deviceHeight*1.04,
          width: fullDeviceWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black87, Color(0xff1b5e20)]
            ),
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            height: deviceHeight*0.28,
            width: deviceWidth*0.6,
            child: Column(
              children: <Widget>[

                Container(
                  height: deviceHeight*0.14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Image.asset(
                    'assets/images/corona.png'
                  )
                ),
                SizedBox(height: deviceHeight*0.02,),
                SlideTransition(
                  position: offsetAnimation,
                  child: Text(
                    "Covid Monitor",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: deviceHeight*0.04,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Montserrat',
                    )
                  )
                ),
              ],
            ),
          )

          // child: Column(
          //   children: <Widget>[
          //     Container(
          //       height: deviceHeight*0.14,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(15)
          //       ),
          //       child: Image.asset(
          //         'assets/images/ad.png'
          //       )
          //     ),

          //     SizedBox(
          //       height: deviceHeight*0.01,
          //     ),
          //     Text(
          //       'COVID MONITOR',
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontSize: deviceHeight*0.031,
          //         fontWeight: FontWeight.w700,
          //         fontFamily: 'Montserrat',
          //       ),
          //     ),
          //   ],
          // ),
      ),
    );
  }
}