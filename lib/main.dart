import 'package:flutter/material.dart';
import 'package:flutter_laravel/screen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BlogApps',
      home: SplashScreen(),
    );
  }
}