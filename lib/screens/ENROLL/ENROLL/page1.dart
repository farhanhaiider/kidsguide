import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidsguide/components/components/textfield.dart';
import 'package:kidsguide/screens/ENROLL/ENROLL/page2.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

// ignore: must_be_immutable
class page1 extends StatefulWidget {
  page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  final emailcontroller = TextEditingController();
  int _currentPage = 0;
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
                    'assets/images/back2.jpg',
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
                  Padding(
                      padding: EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Container(
                        width: _width * 0.80,
                        height: _height * 0.20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/unt1.png',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 20.w, top: 20.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Forget Password',
                              style: TextStyle(
                                color: Color(0xFF0A1828),
                                fontSize: 22,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w600,
                                height: 0.04,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Opacity(
                              opacity: 0.80,
                              child: Text(
                                'Enter your email adress',
                                style: TextStyle(
                                  color: Color(0xFF6A6A6A),
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  height: 0.17,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Text(
                              'Email',
                              style: TextStyle(
                                color: Color(0xFF0D0D0D),
                                fontSize: 13,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            formfield(
                              controler: emailcontroller,
                            ),
                            SizedBox(
                              height: 239.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => page2()),
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
                              height: 30,
                            ),
                            PageViewDotIndicator(
                              currentItem: _currentPage,
                              count: 3,
                              unselectedColor: Colors.black26,
                              selectedColor: Colors.blue,
                            )
                          ])),
                ]),
              ),
            )));
  }
}
