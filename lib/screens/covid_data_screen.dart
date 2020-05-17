import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helpers/sizes.dart';
import '../providers/covid_data.dart';

class CovidDataScreen extends StatefulWidget {
  @override
  _CovidDataScreenState createState() => _CovidDataScreenState();
}

class _CovidDataScreenState extends State<CovidDataScreen> {

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {

    var data = Provider.of<CovidData>(context);

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Covid-19 Stats',
          style: TextStyle(
            color: Colors.white,
            fontSize: deviceHeight*0.038,
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
        child: Column(

          children: <Widget>[

            // Image.asset(
            //   'assets/images/worldImage.jpg',
            //   fit: BoxFit.cover,
            //   height: deviceHeight*0.24,
            //   width: deviceWidth,
            // ),

             SizedBox(height: deviceHeight*0.15,),

            Container(

              alignment: Alignment.center,
              //margin: EdgeInsets.only(top: deviceHeight*0.04 ),
              height: deviceHeight*0.15,
              width: deviceWidth*0.7,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.blue,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child:Center(
                    child: Text(
                      'Total Cases\n  '+data.globalData.totalCases.toString(),
                      style: TextStyle(
                        fontSize: deviceHeight*0.04,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                )
              ),

              SizedBox(height: deviceHeight*0.02,),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: deviceHeight*0.02 ),
                height: deviceHeight*0.15,
                width: deviceWidth*0.7,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                color: Colors.red,

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                        'Total Deaths\n   '+data.globalData.totalDeaths.toString(),

                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  )
                )
              ),

              SizedBox(height: deviceHeight*0.02,),

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: deviceHeight*0.02 ),
                height: deviceHeight*0.15,
                width: deviceWidth*0.7,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Text(
                      'Total Recovered\n      '+data.globalData.totalRecovered.toString(),

                      style: TextStyle(
                        fontSize: deviceHeight*0.04,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                )
              )
            ),
          ],
        )
      )
    );
  }
}