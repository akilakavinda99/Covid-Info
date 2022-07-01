import 'package:covid_info/theme/text.dart';
import 'package:flutter/material.dart';

class PreventWidget extends StatelessWidget{
  final String text;
  final ImageProvider image;

  const PreventWidget({Key? key, required this.text, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return Column(
    children: [
      Image(image: image,height: 61,width: 61,),
      SizedBox(height: 8,),
      Text(text,style: AppStyle.textInfo,)
    ],
  );
  }

}