import 'package:campus_ecommerc_app_project/consts/consts.dart';
import 'package:campus_ecommerc_app_project/consts/list.dart';
import 'package:campus_ecommerc_app_project/widgets_common/bg_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryDetails extends StatelessWidget {
 final  String? title;
  const CategoryDetails ({Key? key, required this.title}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        appBar: AppBar(
          title: title!.text.fontFamily(bold).white.make(),
          ),
        ));
  }
}
