import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/providers/helpline.dart';
import 'package:covid_tracker/widgets/helpline_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HelplineScreen extends StatelessWidget {

  static const routeName = '/helpline-screen';

  void handleClick(String value) {
    switch (value) {
      case 'About':
        break;
      case 'News':
        break;
    }
  }

  List helpline = [];

  @override
  Widget build(BuildContext context) {

    List helplineList = Provider.of<HelplineData>(context).helplineList;

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Helpline',
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

      body: ListView.builder(
        itemBuilder: (context, index) => HelplineItem(),
        itemCount: helplineList.length,
      ),

    );
  }
}