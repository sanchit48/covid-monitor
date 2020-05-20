import 'package:covid_tracker/helpers/sizes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class HelplineItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),

      ),
      //color: Color(0xff1b5e20),
      child: ListTile(

        title: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            'Uttar Pradesh',
            style: TextStyle(
              fontSize: deviceHeight*0.03,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        subtitle: Text(
          '18001805145',
          style: TextStyle(
            fontSize: deviceHeight*0.022,
            fontWeight: FontWeight.bold
          ),
        ),
        trailing: Container(
          margin: EdgeInsets.only(right: 11),
          child: IconButton(
            icon: Icon(Icons.phone, size: deviceHeight*0.04,color: Color(0xff1b5e20),),
            onPressed: () => launch("tel:8958464190"),
          )
        ),

      ),
    );
  }
}