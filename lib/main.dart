import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'layout/home_layout/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: HexColor('#5b7c99'),
            background: HexColor('#e5e9ec'),
            surface: HexColor('#5b7c99').withOpacity(0.8),
            onSurface: Colors.white),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
