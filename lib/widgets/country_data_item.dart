import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/providers/covid_data.dart';
import 'package:covid_tracker/providers/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryDataItem extends StatelessWidget {

  final CountryData countryData;

  CountryDataItem(this.countryData);

  @override
  Widget build(BuildContext context) {
    
    var hell = Provider.of<CovidData>(context).countries;
    String imageName;
    hell.forEach((key, value) {
      if(value == countryData.country) {
        imageName = key;
        return;
      }
    });
    imageName = imageName.toLowerCase();

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        margin: EdgeInsets.all(deviceHeight*0.021),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/$imageName.png',
                  height: deviceHeight*0.1,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

            Container(
              height: deviceHeight*0.05,
              width: deviceWidth*0.4,
              decoration: BoxDecoration(

                color: Colors.white,
                borderRadius: BorderRadius.circular(15),

              ),
              child: Center(

                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FittedBox(
                    child: Text(
                      countryData.country,
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