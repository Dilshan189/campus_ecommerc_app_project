import 'package:campus_ecommerc_app_project/consts/consts.dart';
import 'package:campus_ecommerc_app_project/consts/list.dart';
import 'package:campus_ecommerc_app_project/views/category_screen/category_details.dart';
import 'package:campus_ecommerc_app_project/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class  categoryScreen extends StatelessWidget {
  const  categoryScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
     child: Scaffold(
       appBar: AppBar(
         title: categories.text.fontFamily(bold).white.make(),
       ),
       body: Container(
         padding:  const EdgeInsets.all(12),
         child: GridView.builder(
           shrinkWrap: true,
             itemCount: 9,
             gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 3,mainAxisSpacing: 8,crossAxisSpacing:8,mainAxisExtent: 200),
             itemBuilder: (context,index){
           return Column(
             children: [
               Image.asset(categoryImages[index],
                 height: 120,
               width: 200,
               fit: BoxFit.cover),
               10.heightBox,
               categoryList[index].text.color(darkFontGrey).align(TextAlign.center).make(),

             ],
           ).box.white.rounded.clip(Clip.antiAlias).outerShadowSm.make().onTap(() {
             Get.to(()=>CategoryDetails(title: categoryList[index]));
           });

             }),

       ),
     ),
    );
  }
}
