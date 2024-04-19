import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidsguide/QUIZ/QUIZ/quiz3.dart';
import 'package:kidsguide/QUIZ/QUIZ/results.dart';
import 'package:kidsguide/components/components/nxtpage.dart';
import 'package:kidsguide/screens/HOME/home.dart';

class done extends StatelessWidget {
  const done({super.key});

  @override
  Widget build(BuildContext context) {
    // var _height = MediaQuery.of(context).size.height;
    // var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/back4.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30.h, right: 350.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => quiz3()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/images/arrows.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0.w, top: 160.h),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(59.0),
                      child: Image(
                        image: AssetImage(
                          'assets/images/trophy.png',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Text(
                      'QUIZ ENDED',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        height: 0.06,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 90.h,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const results()),
                        );
                      },
                      child: nxtpage(
                        name: 'RESULTS',
                      )),
                  SizedBox(
                    height: 200.h,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homme()));
                      //print("tapped!");
                    },
                    child: Text(
                      'Go back to homepage',
                      style: TextStyle(
                        color: Color(0xFF3B3B3B),
                        fontSize: 16,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  )
                ])))));
  }
}
