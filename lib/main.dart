import 'package:campus_ecommerc_app_project/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'consts/consts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ///This widget is the root of your application///////////////////////////////.

  @override
  Widget build(BuildContext context) {

     /// using getx so we have to change this material app into getmaterialapp

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent),
          fontFamily:regular,
        ),
      home: const SplashScreen(),
      );
  }
}


