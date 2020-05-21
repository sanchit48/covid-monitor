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

  bool _isInit = true;
  bool _isLoading = false;

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
      Provider.of<CovidData>(context).fetchCovidData().then((_) => setState(() {
        _isLoading = false;
      }));

    }
    _isInit = false;
    super.didChangeDependencies();
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

      body: _isLoading
        ? Center(
          child: SizedBox(
            height: 60,
            width: 60,
            child: CircularProgressIndicator(
             // backgroundColor: Color(0xff1b5e20),

            ),
          ),
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
                        data.globalDataObject.totalCases.toString(),

                        style: TextStyle(
                          fontSize: deviceHeight*0.04,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ]),
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
                          data.globalDataObject.totalDeaths.toString(),

                          style: TextStyle(
                            fontSize: deviceHeight*0.04,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ]
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
                            data.globalDataObject.totalRecovered.toString(),
                            style: TextStyle(
                              fontSize: deviceHeight*0.04,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ]
                      ),
                    ),
                ),
                ),

          ],
        )
      )
    );
  }
}