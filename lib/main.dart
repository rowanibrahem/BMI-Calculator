import 'package:bmi_calculator/bmi_result_screen.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        // iconTheme: const IconThemeData(color: Colors.black ,  size: 90.0,),
        // canvasColor: Colors.black,
        textTheme: const TextTheme(
         headlineLarge: TextStyle(
           fontSize: 25.0,
           fontWeight: FontWeight.bold,
           color: Colors.black,
         ),
        ),
      ),
      home:  BmiScreen(),
    );
  }
}
