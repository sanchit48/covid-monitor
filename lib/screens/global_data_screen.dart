import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helpers/sizes.dart';
import '../providers/covid_data.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GlobalDataScreen extends StatefulWidget {

  static const routeName = '/global-data-screen';

  @override
  _GlobalDataScreenState createState() => _GlobalDataScreenState();
}

class _GlobalDataScreenState extends State<GlobalDataScreen> {

  bool _isInit = true;
  bool _isLoading = false;
  bool _isError = false;

  void handleClick(String value) {
    switch (value) {
      case 'About':
        break;
      case 'News':
        break;
    }
  }

  @override
  void didChangeDependencies() {
    if(_isInit) {
      setState(() {
        _isLoading = true;
      });
        Provider.of<CovidData>(context).fetchCovidData()
        .then((value) => setState(() {
          _isLoading = false;
        })).catchError((error) {

          setState(() {
            _isError = true;
          });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    //print('first');

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

      body: _isError
      ? Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Something Went Wrong!!!',
            style: TextStyle(
              fontSize: deviceHeight*0.03,
              color: Colors.black
            ),
          )
        ),
      )

      : _isLoading
      ? Center(
        child: CircularProgressIndicator(),
      )

      : Container(
        alignment: Alignment.center,
        child: Column(

          children: <Widget>[

            SizedBox(height: deviceHeight*0.15,),

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
                        text: "\n${data.globalDataObject.totalCases.toString()}",
                       // text: "\n10000000",

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
                        text: "\n${data.globalDataObject.totalDeaths.toString()}",
                        //text: 'hello',
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
                        text: "\n${data.globalDataObject.totalRecovered.toString()}",
                        //text: 'hello',

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
            ),
          ),

          ],
        )
      )
    );
  }
}