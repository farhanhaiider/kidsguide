import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidsguide/screens/ENROLL/ENROLL/page1.dart';
import 'package:kidsguide/screens/ENROLL/ENROLL/page3.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

// ignore: must_be_immutable
class page2 extends StatefulWidget {
  page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  int _currentPage = 1;

  @override
  Widget build(BuildContext context) {
    // var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/back3.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(top: 40.h, right: 350.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page1()),
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
                  padding: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: Image(
                    image: AssetImage(
                      'assets/images/verpic.png',
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 230.w),
                  child: Column(
                    children: [
                      Text(
                        'Code Verification',
                        style: TextStyle(
                          color: Color(0xFF0A1828),
                          fontSize: 22,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          height: 0.04,
                        ),
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Opacity(
                        opacity: 0.80,
                        child: Text(
                          'Enter 4 digit verification code ',
                          style: TextStyle(
                            color: Color(0xFF6A6A6A),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 300),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page3()),
                      );
                    },
                    child: Container(
                      width: _width * 0.85,
                      height: 55,
                      child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 18),
                      decoration: ShapeDecoration(
                        color: Color(0xFF0282C7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
                PageViewDotIndicator(
                  currentItem: _currentPage,
                  count: 3,
                  unselectedColor: Colors.black26,
                  selectedColor: Colors.blue,
                )
              ]),
            )));
  }
}
