import 'package:campus_ecommerc_app_project/consts/consts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../consts/list.dart';
import '../../widgets_common/applogo_widget.dart';
import '../../widgets_common/bg_widget.dart';
import '../../widgets_common/customer_textfield.dart';
import '../../widgets_common/our_button.dart';

class singupScreen extends StatelessWidget {
  const singupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              applogiWidget(),
              10.heightBox,
              "Join the $appname".text.fontFamily(bold).white.size(18).make(),
              Column(
                children: [
                  customTextField(hint: namHint, title: name),
                  customTextField(hint: emailHint, title: email),
                  customTextField(hint: passwordHint, title: password),
                  customTextField(hint: passwordHint, title: retypePassword),

                  const Align(
                    alignment: Alignment.centerRight,
                    // child: TextButton(
                    //   onPressed: () {},
                    //   child: forgetpassword.text.make(),
                    // ),
                  ),
                  5.heightBox,
                  // ourButton(
                  //   color: redColor,     [all are command and today end this one]
                  //   title: login,
                  //   textColor: whiteColor,
                  //   onPress: () {},
                  // ).box.width(context.screenWidth - 50).make(),
                  // 5.heightBox,
                 // createNewAccount.text.color(fontGrey).make(),
                  5.heightBox,

                  ourButton(
                    color:  redColor,
                    title: signup,
                    textColor: whiteColor,
                    onPress: () {},
                  ).box.width(context.screenWidth - 50).make(),

                  10.heightBox,
                  loginWith.text.color(fontGrey).make(),
                  15.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                            (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(socialIconList[index],
                              width: 30,),
                          ),
                        )),
                  ),



                ],
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),

            ],
          ),
        ),
      ),
    );
  }

  Text get createNewAccount => const Text("Create New Account");
}

