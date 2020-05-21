import 'package:flutter/material.dart';
import 'data.dart';

class HelplineData with ChangeNotifier {

   List<Helpline> _helpLineList = [

     Helpline(
       stateName: 'Andaman and Nicobar Islands',
       helplineNumber: '03192-232102'
     ),

     Helpline(
       stateName: 'Andhra Pradesh',
       helplineNumber: '0866-2410978'
     ),

     Helpline(
       stateName: 'Arunachal Pradesh',
       helplineNumber: '9436055743'
     ),

     Helpline(
       stateName: 'Assam',
       helplineNumber: '6913347770'
     ),

     Helpline(
       stateName: 'Bihar',
       helplineNumber: '104'
     ),

     Helpline(
       stateName: 'Chandigarh',
       helplineNumber: '9779558282'
     ),

     Helpline(
       stateName: 'Chattisgarh',
       helplineNumber: '104'
     ),

     Helpline(
       stateName: 'Dadra and Nagar Haveli and Daman & Diu',
       helplineNumber: '104'
     ),

     Helpline(
       stateName: '	Delhi',
       helplineNumber: '011-22307145'
     ),

     Helpline(
       stateName: 'Goa',
       helplineNumber: '104'
     ),

     Helpline(
       stateName: 'Gujarat',
       helplineNumber: '104'
     ),

     Helpline(
       stateName: 'Haryana',
       helplineNumber: '8558893911'
     ),

     Helpline(
       stateName: 'Himachal Pradesh',
       helplineNumber: '104'
     ),

     Helpline(
       stateName: 'Jammu & Kashmir',
       helplineNumber: '01912520982'
     ),

     Helpline(
       stateName: 'Jharkhand',
       helplineNumber: '104'
     ),

      Helpline(
       stateName: 'Karnataka',
       helplineNumber: '104'
     ),

      Helpline(
       stateName: 'Kerala',
       helplineNumber: '0471-2552056'
     ),

      Helpline(
       stateName: 'Ladakh',
       helplineNumber: '01982256462'
     ),

      Helpline(
       stateName: 'Lakshadweep',
       helplineNumber: '104'
     ),

      Helpline(
       stateName: 'Madhya Pradesh',
       helplineNumber: '0755-2527177'
     ),

      Helpline(
       stateName: '	Maharashtra',
       helplineNumber: '020-26127394'
     ),

      Helpline(
       stateName: 'Manipur',
       helplineNumber: '3852411668'
     ),

      Helpline(
       stateName: 'Meghalaya',
       helplineNumber: '108'
     ),

      Helpline(
       stateName: 'Mizoram',
       helplineNumber: '102'
     ),

      Helpline(
       stateName: 'Nagaland',
       helplineNumber: '7005539653'
     ),

       Helpline(
       stateName: 'Odisha',
       helplineNumber: '9439994859'
     ),

      Helpline(
       stateName: 'Puducherry',
       helplineNumber: '104'
     ),

      Helpline(
       stateName: 'Punjab',
       helplineNumber: '104'
     ),

      Helpline(
       stateName: 'Rajasthan',
       helplineNumber: '0141-2225624'
     ),

      Helpline(
       stateName: 'Sikkim',
       helplineNumber: '104'
     ),

      Helpline(
       stateName: 'Tamil Nadu',
       helplineNumber: '044-29510500'
     ),

      Helpline(
       stateName: 'Telangana',
       helplineNumber: '104'
     ),

      Helpline(
       stateName: 'Tripura',
       helplineNumber: '0381-2315879'
     ),

      Helpline(
       stateName: 'Uttarakhand',
       helplineNumber: '104'
     ),

      Helpline(
       stateName: 'Uttar Pradesh',
       helplineNumber: '18001805145'
     ),

     Helpline(
       stateName: 'West Bengal',
       helplineNumber: '03323412600'
     ),

   ];

   List<Helpline> get helplineList {
     return _helpLineList;
   }

}