import 'package:campus_ecommerc_app_project/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget ourButton({onPress,color,textColor,String? title}){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: redColor,
      padding: const EdgeInsets.all(12),
    ),
      onPressed: onPress,
      child: title!.text.color(textColor).fontFamily(bold).make(),
  );


}