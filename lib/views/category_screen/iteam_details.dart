import 'package:campus_ecommerc_app_project/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IteamDetails extends StatelessWidget {
  final String? title;
  const IteamDetails({Key?key,required this.title}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.color(fontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.share,)),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.favorite_outline,)),
        ],
      ),
      body: Container(

      ),
    );
  }
}
