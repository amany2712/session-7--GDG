import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:session7_gdg/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "first app",
      theme: ThemeData(textTheme: GoogleFonts.tenorSansTextTheme()),
      home: HomeScreen(),
    );
  }
}
