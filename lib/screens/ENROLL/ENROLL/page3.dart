import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidsguide/screens/ENROLL/ENROLL/page2.dart';
import 'package:kidsguide/screens/HOME/home.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

// ignore: must_be_immutable
class page3 extends StatelessWidget {
  page3({super.key});
  int _currentPage = 2;
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
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
                      'assets/images/back4.jpg',
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
                          MaterialPageRoute(builder: (context) => page2()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/images/arrows.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  // Icon(
                  //   Icons.arrow_back,
                  //   color: Colors.blue,
                  // ),
                  SizedBox(
                    height: 120,
                  ),

                  Padding(
                      padding: EdgeInsets.only(left: 40.w, right: 20.w),
                      child: Container(
                        width: _width * 1,
                        height: _height * 0.40,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 40, left: 70),
                          child: Text(
                            'CODE VERIFIED ',
                            style: TextStyle(
                              color: Color(0xFF0A1828),
                              fontSize: 32,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 0.02,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/done.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homme()),
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
                    height: 100,
                  ),
                  PageViewDotIndicator(
                    currentItem: _currentPage,
                    count: 3,
                    unselectedColor: Colors.black26,
                    selectedColor: Colors.blue,
                  )
                ]))));
  }
}
