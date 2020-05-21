import 'package:covid_tracker/helpers/sizes.dart';
import 'package:covid_tracker/providers/data.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class HelplineItem extends StatelessWidget {

  final Helpline helpline;
  HelplineItem(this.helpline);

  @override
  Widget build(BuildContext context) {

    var deviceHeight = getViewportHeight(context);
    var deviceWidth = getViewportWidth(context);

    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(

        title: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            helpline.stateName,
            style: TextStyle(
              fontSize: deviceHeight*0.028,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            helpline.helplineNumber,
            style: TextStyle(
              fontSize: deviceHeight*0.022,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        trailing: Container(
          margin: EdgeInsets.only(right: 11),
          child: IconButton(
            icon: Icon(Icons.phone, size: deviceHeight*0.04,color: Color(0xff1b5e20),),
            onPressed: () => launch("tel:${helpline.helplineNumber}"),
          )
        ),

      ),

    );
  }
}