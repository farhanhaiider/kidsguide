import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kidsguide/QUIZ/QUIZ/quiz2.dart';
import 'package:kidsguide/components/components/container.dart';
import 'package:kidsguide/components/components/nxtpage.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class quiz1 extends StatelessWidget {
  quiz1({super.key});

  int _currentPage = 0;

  // get selectedPage => quiz1();

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
                  children: [
                    SizedBox(
                      height: 50.h,
                    ),
                    Container(
                      width: _width * 1,
                      height: _height * 0.92,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30.h, left: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Question No 1',
                              style: TextStyle(
                                color: Color(0xFF6A6A6A),
                                fontSize: 20,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.04,
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            SizedBox(
                              width: 388,
                              child: Text(
                                'How many vowels are there ?',
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
                              height: 74.h,
                            ),
                            containerr(
                              icon: (Icons.check),
                              containercolor: Color(0xFF63B6E3),
                              containerside: BorderSide(
                                width: 1,
                                color: Color(0xFF0282C7),
                              ),
                            ),

                            SizedBox(
                              height: 14.h,
                            ),
                            containerr(
                              icon: (Icons.check),
                              // tickcross: 'assiets/images/tick.svg',
                              containercolor:
                                  Colors.black.withOpacity(0.10000000149011612),
                              containerside: BorderSide(
                                width: 1,
                                color: Colors.black
                                    .withOpacity(0.10000000149011612),
                              ),
                            ),
                            SizedBox(
                              height: 14.h,
                            ),
                            containerr(
                              icon: (Icons.check),
                              // tickcross: 'assets/images/tick.svg',
                              containercolor:
                                  Colors.black.withOpacity(0.10000000149011612),
                              containerside: BorderSide(
                                width: 1,
                                color: Colors.black
                                    .withOpacity(0.10000000149011612),
                              ),
                            ),

// No text styles in this selection

                            SizedBox(
                              height: 14.h,
                            ),
                            containerr(
                              icon: (Icons.check),
                              // tickcross: 'assets/images/cross.svg',
                              containercolor:
                                  Colors.black.withOpacity(0.10000000149011612),
                              containerside: BorderSide(
                                width: 1,
                                color: Colors.black
                                    .withOpacity(0.10000000149011612),
                              ),
                            ),
                            SizedBox(
                              height: 313.h,
                            ),
                            GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => quiz2()),
                                  );
                                },
                                child: nxtpage(
                                  name: 'NEXT',
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            PageViewDotIndicator(
                              currentItem: _currentPage,
                              count: 3,
                              unselectedColor: Colors.black26,
                              selectedColor: Colors.blue,
                            )
                          ],
                        ),
                      ),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                      ),
                    ),
                  ],
                )))));
  }
}
