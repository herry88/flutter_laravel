import 'package:flutter/material.dart';
import 'package:flutter_laravel/widget/home/HomePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState(){
    var d = Duration(seconds: 3);
    Future.delayed(d, (){
      //next page
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
        return HomePage();
      }), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'img/logo.png',
            ),
          ),
        ),
      ),
    );
  }
}
