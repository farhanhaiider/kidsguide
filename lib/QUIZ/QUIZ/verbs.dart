import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidsguide/QUIZ/QUIZ/loading.dart';
import 'package:kidsguide/components/components/startquiz.dart';
import 'package:kidsguide/screens/HOME/maths.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Verbs extends StatelessWidget {
  const Verbs({super.key});

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
                      'assets/images/back6.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(
                          left: 30.w,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.only(top: 40.h, right: 350.w),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => maths()),
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
                                padding: EdgeInsets.only(),
                                child: Image(
                                  width: _width * 1,
                                  image: AssetImage(
                                    'assets/images/eng.png',
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 340,
                                    height: 8,
                                    decoration:
                                        BoxDecoration(color: Color(0xFF064DAE)),
                                  ),
                                  SizedBox(height: 49.h),
                                  Text(
                                    'Verbs',
                                    style: TextStyle(
                                      color: Color(0xFF131111),
                                      fontSize: 20,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 0.06,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    '18 MCQS',
                                    style: TextStyle(
                                      color: Color(0xFF737171),
                                      fontSize: 16,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      height: 0.10,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 40.w),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(52.0),
                                      child: Image(
                                        image: AssetImage(
                                          'assets/images/engg.png',
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Text(
                                    'Description',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0.08,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 30.h,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'You can sign in from a computer or add your account to the ',
                                        style: TextStyle(
                                          color: Color(0xFF6A6A6A),
                                          fontSize: 17,
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w400,
                                          height: 0.08,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Text(
                                        'Gmail app on your phone or tablet. Once youre signed in',
                                        style: TextStyle(
                                          color: Color(0xFF6A6A6A),
                                          fontSize: 17,
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w400,
                                          height: 0.08,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.h,
                                      ),
                                      Text(
                                        'open your inbox to check your mail ',
                                        style: TextStyle(
                                          color: Color(0xFF6A6A6A),
                                          fontSize: 17,
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w400,
                                          height: 0.08,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 150,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => loading()),
                                        );
                                      },
                                      child: startquiz())
                                ],
                              ),
                            ]))))));
  }
}
