import 'package:covid_info/static/static_values.dart';
import 'package:covid_info/widgets/info_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 return  Scaffold(

   body: const SingleChildScrollView(

     child:
       InfoCard()
     ,
   ),
 );
  }

}