import 'package:covid_info/theme/color.dart';
import 'package:covid_info/theme/text.dart';
import 'package:flutter/material.dart';

class DataCard extends StatelessWidget{
  final String text;
  final ImageProvider image;
  final String info;

  const DataCard({Key? key, required this.text, required this.image, required this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return  Container(
      width: 134,//card width
      height: 145,

      padding: EdgeInsets.all(1),
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(

        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(6),

      ),
      child:Center(
        child: Column(
          children: [
            SizedBox(height: 12,),
            Image(image: image,width: 81,height: 75,),
            SizedBox(height: 5,),
            Text('$text :',style: AppStyle.textNormal,),
            SizedBox(height: 2,),
            Text('$info ',style: AppStyle.textInfo,),
            SizedBox(height: 17,),


          ],
        ),

      )
    );

  }



}
