import 'package:flutter/material.dart';
import 'package:ruletka/view/AcessCameraScreen.dart';
import 'package:ruletka/view/HomeScreen.dart';
import 'package:ruletka/view/SplashScreen.dart';
import 'package:ruletka/view/SubScreen1.dart';
import 'package:ruletka/view/SubScreen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SubScreen2(
      ),
    );
  }
}
