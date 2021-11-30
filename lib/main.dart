import 'package:flutter/material.dart';
import 'package:youtube_clone_flutter/CarProbe/HomeScreen.dart';
import 'package:youtube_clone_flutter/CarProbe/LoginScreen.dart';
import 'package:youtube_clone_flutter/Constants/colors.dart';
import 'package:youtube_clone_flutter/Screens/homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        textSelectionColor: kWhiteColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}
