import 'package:flutter/material.dart';
import 'package:meal_manager/Constants&Globals/Constant.dart';

import 'LoginScreen.dart';





class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  void initState() {

    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      body: Center(
        child: Container(
          height: 250,
          width: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/image-logo.png")
              )
          ),
        ),
      )
    );
  }
}
