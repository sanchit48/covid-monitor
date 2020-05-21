import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/providers/covid_data.dart';
import 'package:covid_tracker/providers/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CountryScreen extends StatelessWidget {

  static const routeName = '/country-screen';

  final CountryData countryObject;

  CountryScreen({this.countryObject});

  @override
  Widget build(BuildContext context) {

    // var countryObject = Provider.of<CovidData>(context).countryList.firstWhere((countryObject) => countryObject.country == countryName);

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
                  child: Column(
                    children: <Widget> [

                      Text(
                        'Total Cases',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      Text(
                        countryObject.totalCases.toString(),
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]),
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
                  child: Column(
                    children: <Widget> [

                      Text(
                        'Total Deaths',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      Text(
                        countryObject.totalDeaths.toString(),
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]),
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
                  child: Column(
                    children: <Widget> [

                      Text(
                        'Total Recovered',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      Text(
                       countryObject.totalRecovered.toString(),
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]),
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
                  child: Column(
                    children: <Widget> [

                      Text(
                        'Total Tests',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      Text(
                        countryObject.totalTests.toString(),
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]),
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
                color: Colors.orange,

                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(deviceHeight*0.022),
                  child: Column(
                    children: <Widget> [

                      Text(
                        'Critical Cases',
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      Text(
                        countryObject.critical.toString(),
                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]),
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