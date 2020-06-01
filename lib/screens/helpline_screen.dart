import 'package:covid_tracker/screens/about_screen.dart';

import '../helpers/sizes.dart';
import '../providers/helpline.dart';
import '../widgets/helpline_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class HelplineScreen extends StatelessWidget {

  static const routeName = '/helpline-screen';

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
            onSelected: (_) => Navigator.of(context).pushNamed(AboutScreen.routeName),
            itemBuilder: (BuildContext context) {
              return {'About'}.map((String choice) {
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
        itemBuilder: (context, index) => HelplineItem(helplineList[index]),
        itemCount: helplineList.length,
      ),

    );
  }
}