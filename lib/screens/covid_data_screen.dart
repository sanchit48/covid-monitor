import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helpers/sizes.dart';
import '../providers/covid_data.dart';
import '../widgets/titles.dart';

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

      body: Container(

        child: Column(

          children: <Widget>[

            Image.asset(
              'assets/images/worldImage.jpg',
              fit: BoxFit.cover,
            ),

            SizedBox(height: deviceHeight*0.008,),

            Container(

              margin: EdgeInsets.only(top: deviceHeight*0.02 ),
              height: deviceHeight*0.160,
              width: deviceWidth*0.7,
              child: Card(

                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(

                    children: <Widget>[

                      Text(
                        'Total Cases: '+data.globalData.totalCases.toString(),

                        style: TextStyle(
                          fontSize: deviceHeight*0.025,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: deviceHeight*0.008,),

                      Text(
                        'Total Deaths: '+data.globalData.totalDeaths.toString(),

                        style: TextStyle(
                          fontSize: deviceHeight*0.025,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      SizedBox(height: deviceHeight*0.008,),

                      Text(
                        'Total Recovered: '+data.globalData.totalRecovered.toString(),

                        style: TextStyle(
                          fontSize: deviceHeight*0.025,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                    ],

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