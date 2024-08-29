import 'package:facebook/constants/strings.dart';
import 'package:facebook/models/info.dart';
import 'package:facebook/views/screens/home.dart';
import 'package:facebook/views/screens/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      

        useMaterial3: true,
        
      ),
initialRoute: AppStrings.splashRoute,
      routes: {
AppStrings.homeRoute:(context)=>const HomeScreen(),
AppStrings.splashRoute:(context)=>const SplashScreen(), 
AppStrings.infoRoute:(context)=>const Details()
      },
    );
  }
}



