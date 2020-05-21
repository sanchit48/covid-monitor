import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/providers/covid_data.dart';
import 'package:covid_tracker/providers/data.dart';
import 'package:covid_tracker/screens/country_screen.dart';
import 'package:covid_tracker/widgets/country_data_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/covid_data.dart';
class CountryWiseDataScreen extends StatefulWidget {

  static const routeName = '/country-wise-data-screen';

  @override
  _CountryWiseDataScreenState createState() => _CountryWiseDataScreenState();
}

class _CountryWiseDataScreenState extends State<CountryWiseDataScreen> {

  TextEditingController editingController = TextEditingController();
  bool isInit = true;
  bool isLoading = false;

   void handleClick(String value) {
    switch (value) {
      case 'About':
        break;
      case 'News':
        break;
    }
  }

  List<CountryData> countryWiseList;

  var items = List<CountryData>();

  @override
  void didChangeDependencies() {

    if(isInit) {
      setState(() {
        isLoading = true;
      });
    }
    countryWiseList = Provider.of<CovidData>(context).countryList;

    items.addAll(countryWiseList);
    if(countryWiseList.isNotEmpty) {
      setState(() {
        isLoading = false;
      });
    }
    isInit = false;
    super.didChangeDependencies();
  }

  void filterSearchResults(String query) {

    if(query.isNotEmpty) {
      query = query.toLowerCase();
      List<CountryData> dummyList = new List<CountryData>();
      dummyList.addAll(countryWiseList);
      List<CountryData> chosenCountry = dummyList.where((element) => element.country.toLowerCase().substring(0, query.length) == query).toList();

      print(query);

      setState(() {
        items.clear();
        items.addAll(chosenCountry);
      });

    }
    else {
      setState(() {
        items.clear();
        items.addAll(countryWiseList);
      });
    }
  }

  Future<bool> onBackPressed() {

    if(editingController.text.isNotEmpty) {
      setState(() {

        items.clear();
        items.addAll(countryWiseList);
        editingController.text = '';

      });
    }
  }

  @override
  Widget build(BuildContext context) {

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;

    return WillPopScope(
      onWillPop: onBackPressed,
      child: Scaffold(

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

        body: isLoading
          ? Center(
            child: SizedBox(
              height: 60,
              width: 60,
              child: CircularProgressIndicator(
             // backgroundColor: Color(0xff1b5e20),

              ),
            ),
          )

          : Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                  top: 16.0,
                  left: 8.0,
                  right: 8.0
                ),
                child: Theme(
                  data: new ThemeData(
                    primaryColor: Color(0xff1b5e20),
                    primaryColorDark: Colors.red,
                  ),
                  child: TextField(
                    onChanged: (value) {
                      filterSearchResults(value);
                    },
                    controller: editingController,
                    decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search country',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25))

                    ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                    crossAxisCount: 2,
                    childAspectRatio: (itemWidth)/(itemHeight/1.55),
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,

                  ),

                  padding: EdgeInsets.only(top: itemHeight*0.01),
                  itemCount: items.length,
                  itemBuilder: (context, index) {

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CountryScreen(countryObject: items[index],),
                          )
                        );
                      },
                      child: CountryDataItem(items[index])
                    );
                  }
                ),
              ),
           ],
         ),
      ),
    );
  }
}