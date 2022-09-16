import 'package:flutter/material.dart';
import 'package:grinder/pages/Register_home.dart';
import 'package:grinder/widgets/BottomNaigation.dart';
import 'package:grinder/widgets/alert.dart';
import 'package:grinder/widgets/location.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
      ),
      // home: BottomNavigation(),
      // home:AlertWidget(),
      home: RegisterWidget(),
    );

  }
}

