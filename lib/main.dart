import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:practice_flutter/practice_work/calculator_practice.dart';
import 'package:practice_flutter/practice_work/login_page_practice.dart';
import 'package:practice_flutter/practice_work/lotryapp.dart';
import 'package:practice_flutter/practice_work/whatsapp_practice.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Practice App",
            home: MyCalculator(),
            // initialRoute: LotteryApp.id,
            // routes: {
            //   LotteryApp.id : (context)=> LotteryApp(),
            //   LoginMyApp.id : (context) => LoginMyApp(),
            // },
          );
        });
  }
}

