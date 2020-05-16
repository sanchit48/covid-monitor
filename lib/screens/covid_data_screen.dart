import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../helpers/sizes.dart';
import '../providers/covid_data.dart';

class CovidDataScreen extends StatefulWidget {
  @override
  _CovidDataScreenState createState() => _CovidDataScreenState();
}

class _CovidDataScreenState extends State<CovidDataScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {

    var data = Provider.of<CovidData>(context);

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Covid Tracker',
          style: TextStyle(
            fontSize: deviceHeight*0.037,
            fontWeight: FontWeight.bold,
            fontFamily: 'Oswald-Light',
          ),
        ),
        backgroundColor: Color(0xff1b5e20),
        centerTitle: true,
      ),

      body: Container(



      ),

    );
  }
}