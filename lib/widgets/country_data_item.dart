import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/providers/data.dart';
import 'package:flutter/material.dart';

class CountryDataItem extends StatelessWidget {

  final CountryWiseData countryWiseData;

  CountryDataItem(this.countryWiseData);


  @override
  Widget build(BuildContext context) {

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return InkWell(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
         margin: EdgeInsets.all(27),
          child: Column(
            children: <Widget>[

              // force the child into certain form
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/newsTest.jpg',
                   height: deviceHeight*0.17,
                   width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Container(
                height: deviceHeight*0.05,
                width: deviceWidth*0.4,
              //  padding: EdgeInsets.all(20),
                decoration: BoxDecoration(

                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),

                ),
                child: Center(

                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                      child: Text(
                        countryWiseData.country,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: deviceHeight*0.026,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),

      ),
    );
  }
}