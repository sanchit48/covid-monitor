import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/providers/covid_data.dart';
import 'package:covid_tracker/screens/country_screen.dart';
import 'package:covid_tracker/widgets/country_data_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/covid_data.dart';
import '../models/data_search.dart';
import 'package:search_widget/search_widget.dart';
class CountryWiseDataScreen extends StatelessWidget {

  static const routeName = '/country-wise-data-screen';

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

    var countryWiseList = Provider.of<CovidData>(context).countryWiseList;

    // var deviceHeight = getViewportHeight(context);
    // var deviceWidth = getViewportWidth(context);

    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return Scaffold(

      appBar: AppBar(
        title: Text(
          'Country-wise Stats',
        style: TextStyle(
          color: Colors.white,
          fontSize: size.height*0.034,
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

       body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

          crossAxisCount: 2,
          childAspectRatio: (itemWidth)/(itemHeight/1.55),
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,

        ),

        padding: EdgeInsets.only(top: itemHeight*0.01),

        itemCount: countryWiseList.length,

        itemBuilder: (context, index) {

          return GestureDetector(

            onTap: () => Navigator.of(context).pushNamed(CountryScreen.routeName),

            child: CountryDataItem(countryWiseList[index])

          );
        }
      ),
    );
  }
}