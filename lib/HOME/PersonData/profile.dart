// import 'package:app/screens/homme.dart';
// import 'package:app/screens/maths.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kidsguide/HOME/PersonData/data.dart';
import 'package:kidsguide/QUIZ/QUIZ/results.dart';
import 'package:kidsguide/components/components/containerr.dart';
import 'package:kidsguide/components/components/user.dart';
import 'package:kidsguide/screens/ENROLL/ENROLL/login.dart';
import 'package:kidsguide/subscritopnprocess/SubscriptionProcess/subscription.dart';

class editprofile extends StatelessWidget {
  const editprofile({super.key});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/backk.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, top: 20.h),
                        child: GestureDetector(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          child: Icon(
                            Icons.menu,
                            color: Colors.blue,
                            size: 30, // Adjust the icon size as needed
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Stack(children: [
                        Container(
                          width: _width * 1,
                          height: _height * 0.90,
                          color: Colors.transparent,
                          child: Stack(children: [
                            Positioned(
                              top: 40,
                              child: Container(
                                width: _width * 1,
                                height: _height * 0.88,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 90.h,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        'James Charles',
                                        style: TextStyle(
                                          color: Color(0xFF0D0D0D),
                                          fontSize: 20,
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w700,
                                          height: 0.04,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 80,
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      profile()),
                                            );
                                          },
                                          child: containerr1(
                                              icon:
                                                  'assets/images/IconButton.svg',
                                              name: 'Edit Profile',
                                              Textcolor: Colors.black)),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      subscription()),
                                            );
                                          },
                                          child: containerr1(
                                              icon: 'assets/images/Done.svg',
                                              name: 'Subscription',
                                              Textcolor: Colors.black)),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    results()),
                                          );
                                        },
                                        child: containerr1(
                                            icon: 'assets/images/globe.svg',
                                            name: 'Quiz Score',
                                            Textcolor: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Loginscreen()),
                                          );
                                        },
                                        child: containerr1(
                                          icon: 'assets/images/signout.svg',
                                          name: 'Sign Out',
                                          Textcolor: Color(0xFF064DAE),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(left: 160.w, child: user()),
                          ]),
                        ),
                      ])
                    ])))));
  }
}
