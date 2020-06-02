import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/providers/data.dart';
import 'package:flutter/material.dart';
class CountryScreen extends StatelessWidget {

  static const routeName = '/country-screen';

  final CountryData countryObject;

  CountryScreen({this.countryObject});

  @override
  Widget build(BuildContext context) {

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return Scaffold(

      appBar: AppBar(
        title: Text(
          countryObject.country,
          style: TextStyle(
            color: Colors.white,
            fontSize: deviceHeight*0.036,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff1b5e20)
      ),

      backgroundColor: Colors.white,

      body: Container(

        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(

            children: <Widget>[
              SizedBox(height: deviceHeight*0.015,),

              Container(

              alignment: Alignment.center,
              height: deviceHeight*0.15,
              width: deviceWidth*0.7,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.blue,

              child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(deviceHeight*0.022),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[

                      TextSpan(
                        text: 'Total Cases',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      TextSpan(
                        text: "\n${countryObject.totalCases.toString()}",
                        //text: "Hello",

                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                    ),
                  textAlign: TextAlign.center,

                  )
                  ),
                )
              ),

              SizedBox(height: deviceHeight*0.01,),

              Container(

              alignment: Alignment.center,
              height: deviceHeight*0.15,
              width: deviceWidth*0.7,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.red,

               child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(deviceHeight*0.022),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[

                      TextSpan(
                        text: 'Total Deaths',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      TextSpan(
                        text: "\n${countryObject.totalDeaths.toString()}",
                        //text: "Hello",
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                    ),
                  textAlign: TextAlign.center,

                  )
                  ),
                )
              ),

               SizedBox(height: deviceHeight*0.01,),

              Container(

              alignment: Alignment.center,
              height: deviceHeight*0.15,
              width: deviceWidth*0.7,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.green,

               child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(deviceHeight*0.022),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[

                      TextSpan(
                        text: 'Total Recovered',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      TextSpan(
                        text: "\n${countryObject.totalRecovered.toString()}",
                        //text: "Hello",
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                    ),
                  textAlign: TextAlign.center,

                  )
                  ),
                )
              ),

              SizedBox(height: deviceHeight*0.01,),

              Container(

              alignment: Alignment.center,
              height: deviceHeight*0.15,
              width: deviceWidth*0.7,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.pink,

               child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(deviceHeight*0.022),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[

                      TextSpan(
                        text: 'Active Cases',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      TextSpan(
                        text: "\n${countryObject.activeCases.toString()}",
                        //text: "Hello",
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                    ),
                  textAlign: TextAlign.center,

                  )
                  ),
                )
              ),

              SizedBox(height: deviceHeight*0.01,),

               Container(

              alignment: Alignment.center,
              height: deviceHeight*0.15,
              width: deviceWidth*0.7,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Color(0xff00acc1),

                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(deviceHeight*0.022),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[

                      TextSpan(
                        text: 'Total Tests',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      TextSpan(
                        text: "\n${countryObject.totalTests.toString()}",
                        //text: "Hello",

                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                    ),
                  textAlign: TextAlign.center,

                  )
                  ),                )
              ),

              SizedBox(height: deviceHeight*0.01,),

               Container(

              alignment: Alignment.center,
              height: deviceHeight*0.15,
              width: deviceWidth*0.7,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.orange,

                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(deviceHeight*0.022),
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[

                      TextSpan(
                        text: 'Critical Cases',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      TextSpan(
                        text: "\n${countryObject.critical.toString()}",
                        //text: "Hello",

                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]
                    ),
                  textAlign: TextAlign.center,

                  )
                  ),
                )
              ),
            ],
          ),
        )
      )
    );
  }
}