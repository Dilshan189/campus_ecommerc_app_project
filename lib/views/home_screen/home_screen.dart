import 'package:campus_ecommerc_app_project/consts/colors.dart';
import 'package:campus_ecommerc_app_project/consts/consts.dart';
import 'package:campus_ecommerc_app_project/consts/list.dart';
import 'package:campus_ecommerc_app_project/widgets_common/home_buttons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class  HomeScreen extends StatelessWidget {
  const  HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {



    return Container(
      padding: const EdgeInsets.all(12),
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(child:Column(
        children: [
          Container(
            alignment: Alignment.center,
            height:60,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                border:InputBorder.none,
                suffixIcon: Icon(Icons.search),    /// added search Button ////////
                filled: true,
                fillColor: whiteColor,
                hintText:searchanything,
                hintStyle: TextStyle(color: textfieldGrey),
              ),
            ),
          ),

          10.heightBox,

          /// swiper brands //////////////////////////////////  card auto play /////////////////////////////

        Expanded(
          child: SingleChildScrollView(
            physics:const BouncingScrollPhysics(),
          
            child: Column(
              children: [
                VxSwiper.builder(
                    aspectRatio: 16/9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount:sliderList.length,
                    itemBuilder: (context,index) {
                      return Image.asset(
                        sliderList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                    }),
            
                15.heightBox,
            
                //deals buttons added
            
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(2, (index) => homeButtons(
                    height:context.screenHeight * 0.15,
                    width:context.screenWidth / 2.5,
                    icon: index == 0 ? icTodaysDeal : icFlashDeal,
                    title: index == 0 ? todayDeal :flashsale,
                  )),
                ),
            
                /// 2nd swiper ///////////////////////////////////////////////////////
            
                15.heightBox,
            
                VxSwiper.builder(
                    aspectRatio: 16/9,
                    autoPlay: true,
                    height: 150,
                    enlargeCenterPage: true,
                    itemCount:secondSliderList.length,
                    itemBuilder: (context,index) {
                      return Image.asset(
                        secondSliderList[index],
                        fit: BoxFit.fill,
                      ).box.rounded.clip(Clip.antiAlias).margin(const EdgeInsets.symmetric(horizontal: 8)).make();
                    }),
            
                /// category buttons ///////////////////////////////////////////////
            
                10.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(3, (index) => homeButtons(
                    height:context.screenHeight * 0.15,
                    width:context.screenWidth / 3.5,
                    icon: index == 0 ? icTopCategories : index == 1 ? icBrands : icTopSeller,
                    title: index == 0 ? topCategories : index == 1 ? brand :topSEllers,
                  )),
                ),
            
                ///featured categories////////////////////////////////////////////////
            
                10.heightBox,
            
                Align(
                  alignment: Alignment.centerLeft,
                  child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: featuredCategories.text.color(darkFontGrey).size(18).fontFamily(semibold).make(),
                ),
              ],
            ),
          ),
        ),
      ],
    )));
  }
}

 String get brand => "Brand";

