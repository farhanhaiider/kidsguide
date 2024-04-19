// import 'package:app/components/nxtpage.dart';
// import 'package:app/components/textfield.dart';
// import 'package:app/screens/opinion.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidsguide/screens/HOME/home.dart';

class notifications extends StatelessWidget {
  const notifications({super.key});

  @override
  Widget build(BuildContext context) {
    // var _height = MediaQuery.of(context).size.height;
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
                      'assets/images/back4.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.h, right: 350.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homme()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/images/arrows.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  Text(
                    'Notifications',
                    style: TextStyle(
                      color: Color(0xFF0D0D0D),
                      fontSize: 20,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today',
                        style: TextStyle(
                          color: Color(0xFF0A1828),
                          fontSize: 18,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.06,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: _width * 0.90,
                        height: 71,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            SvgPicture.asset(
                              'assets/images/Avatar.svg',
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Congratulations ! you scored the highest achievment level',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w500,
                                height: 0.15,
                              ),
                            )
                          ],
                        ),
                        decoration: ShapeDecoration(
                          color: Color(0xFF115073),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF064DAE)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Yesterday',
                        style: TextStyle(
                          color: Color(0xFF0A1828),
                          fontSize: 18,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.06,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: _width * 0.90,
                        height: 71,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            SvgPicture.asset(
                              'assets/images/Avatar.svg',
                              width: 20,
                              height: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'New quiz uploaded',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontFamily: 'Manrope',
                                fontWeight: FontWeight.w500,
                                height: 0.15,
                              ),
                            )
                          ],
                        ),
                        decoration: ShapeDecoration(
                          color: Color(0xFF115073),
                          shape: RoundedRectangleBorder(
                            side:
                                BorderSide(width: 1, color: Color(0xFF064DAE)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x19000000),
                              blurRadius: 10,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ])))));
  }
}
