import 'package:campus_ecommerc_app_project/consts/consts.dart';
import 'package:flutter/cupertino.dart';

Widget homeButtons({ icon, width,height, title}) {
  return  Column(
      children: [
        Image.asset(icTodaysDeal,width: 26),
        5.heightBox,
        todayDeal.text.fontFamily(semibold).color(darkFontGrey).make(),
      ],
  ).box.rounded.white.size(width, height, ).make();

}