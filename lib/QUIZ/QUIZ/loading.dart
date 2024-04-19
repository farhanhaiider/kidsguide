import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kidsguide/QUIZ/QUIZ/quiz1.dart';

class loading extends StatefulWidget {
  static const String id = 'splash_screen';

  const loading({super.key});

  @override
  State<loading> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<loading> {
  @override
  void initState() {
    movetoNextScreen();
    super.initState();
  }

  movetoNextScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => quiz1()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/laoding.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 380.h, left: 170.w),
                    child: Row(
                      children: [
                        SpinKitFadingCircle(
                          size: 100,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    'Quiz Loading \n',
                    style: TextStyle(
                      color: Color(0xFFFFEDED),
                      fontSize: 20,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      height: 0.06,
                    ),
                  )
                ],
              ),
            )));
  }
}
