import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/providers/covid_data.dart';
import 'package:covid_tracker/providers/data.dart';
import 'package:covid_tracker/screens/country_screen.dart';
import 'package:covid_tracker/widgets/country_data_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/covid_data.dart';
import '../providers/data.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CountryWiseDataScreen extends StatefulWidget {

  static const routeName = '/country-wise-data-screen';

  @override
  _CountryWiseDataScreenState createState() => _CountryWiseDataScreenState();
}

class _CountryWiseDataScreenState extends State<CountryWiseDataScreen> {

  TextEditingController editingController = TextEditingController();
  bool isInit = true;
  bool isLoading = false;
  bool isError = false;

   void handleClick(String value) {
    switch (value) {
      case 'About':
        break;
      case 'News':
        break;
    }
  }

  void printF() {
    print("j");
  }

  List<CountryData> countryWiseList;

  var items = List<CountryData>();
  // List<CountryData> items = [

  //   CountryData(
  //     country: 'country',
  //     totalCases: 1000,
  //     totalDeaths: 1000,
  //     totalRecovered: 1000,
  //     totalTests: 1000,
  //     critical: 1000,
  //   )
  // ];

  void filterSearchResults(String query) {

    if(query.isNotEmpty) {
      query = query.toLowerCase();
      List<CountryData> dummyList = new List<CountryData>();
      dummyList.addAll(countryWiseList);
      List<CountryData> chosenCountry = dummyList.where((element) => element.country.toLowerCase() == query).toList();

      dummyList.clear();

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
  void didChangeDependencies() {
    print("adnajd");
    if(isInit) {

      setState(() {
        print("a");
        isLoading = true;
      });

    }

    isError = Provider.of<CovidData>(context).isError;
    print(isError);

    if(isError) {
      setState(() {
        print("b");
        isLoading = false;
        isError = true;
      });
    }
    else {
      print("g");
      countryWiseList = Provider.of<CovidData>(context).countryList;
      items.addAll(countryWiseList);
      print("c");


      if(countryWiseList.isNotEmpty) {
        setState(() {
          print("d");

          isLoading = false;
        });
      }
    }

    isInit = false;
    super.didChangeDependencies();
  }

  List<CountryData> getCountryList(BuildContext context) {


  }

  @override
  Widget build(BuildContext context) {

    //getCountryList(context);
        print("rr");


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

              child: CircularProgressIndicator(
             // backgroundColor: Color(0xff1b5e20),
          ),
        )
        : isError
        ? Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(

                text: TextSpan(
                  style: TextStyle(
                    fontSize: deviceHeight*0.05,
                    color: Colors.red,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Something went"
                    ),
                    TextSpan(
                      text: "\nwrong"
                    ),
                  ]
                ),
                textAlign: TextAlign.center,
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