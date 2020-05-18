import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helpers/sizes.dart';
import '../providers/covid_data.dart';

class GlobalDataScreen extends StatefulWidget {

  static const routeName = '/global-data-screen';

  @override
  _GlobalDataScreenState createState() => _GlobalDataScreenState();
}

class _GlobalDataScreenState extends State<GlobalDataScreen> {

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }

  void handleClick(String value) {
    switch (value) {
      case 'About':
        break;
      case 'News':
        break;
    }
  }

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
            fontSize: deviceHeight*0.034,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat',
          ),
        ),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'About', 'News'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
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