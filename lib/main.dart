import 'package:flutter/material.dart';
import 'package:session7_gdg/navig_bar.dart';

void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "first app",
      home: NavigBar(),
    );
  }
}