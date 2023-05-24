import 'dart:async';
import 'package:ev/app_pages.dart';
import 'package:ev/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
class MySplash extends StatefulWidget {
  const MySplash({Key? key}) : super(key: key);
  @override
  State<MySplash> createState() => _SplashScreenState();
}
_SplashScreenState createState() => _SplashScreenState();

class _SplashScreenState extends State<MySplash> {
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3),
            ()=>Get.toNamed(Routes.HOME),
    );
  }

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blueAccent
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Center(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/Logo.png",
                      height: 250.0,
                      width: 250.0,
                    ),
                    Image.asset("assets/EASY.png")
                  ]
                ),
              ),


              CircularProgressIndicator(
                valueColor:  AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



