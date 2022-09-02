import 'package:flutter/material.dart';
import 'package:movie/constants/assets_path.dart';
import 'package:flutter/services.dart';
import 'package:movie/config/themes/app_color.dart';
import 'package:movie/config/themes/text_style.dart';

import 'home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'monsterrat',
          scaffoldBackgroundColor: DarkTheme.darkerBackground,
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: DarkTheme.white, displayColor: DarkTheme.white)),
      home: const HomePage(),
    );
  }
}

