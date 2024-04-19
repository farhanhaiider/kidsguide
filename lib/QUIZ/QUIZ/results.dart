import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kidsguide/components/components/answers.dart';

import 'package:percent_indicator/percent_indicator.dart';

class results extends StatelessWidget {
  const results({super.key});

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
                    child: Column(children: [
                  SizedBox(
                    height: 70.h,
                  ),
                  Container(
                    width: _width * 1,
                    height: _height * 0.90,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.h,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'RESULTS',
                                    style: TextStyle(
                                      color: Color(0xFF0D0D0D),
                                      fontSize: 20,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0.04,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Text(
                                    'Score Circle',
                                    style: TextStyle(
                                      color: Color(0xFF0D0D0D),
                                      fontSize: 20,
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      height: 0.04,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 105.w,
                              ),
                              // Image(
                              //   image: AssetImage(
                              //     'assets/images/k.png',
                              //   ),
                              // ),
                            ],
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 120.w),
                            child: new CircularPercentIndicator(
                              radius: 80.0,
                              animation: true,
                              animationDuration: 1200,
                              lineWidth: 15.0,
                              percent: 0.8,
                              center: new Text(
                                '50/60',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 0.03,
                                ),
                              ),
                              circularStrokeCap: CircularStrokeCap.butt,
                              backgroundColor: Color(0x5E0282C7),
                              progressColor: Color(0xFF0282C7),
                            ),
                          ),
                          SizedBox(
                            height: 35.h,
                          ),
                          answer(
                            tickcross: 'assets/images/tick.svg',
                            textt: 'There are  5 vowels in english',
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          answer(
                            tickcross: 'assets/images/tick.svg',
                            textt: 'There are  5 vowels in english',
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          answer(
                            tickcross: 'assets/images/tick.svg',
                            textt: 'There are  5 vowels in english',
                          ),
                          SizedBox(
                            height: 27.h,
                          ),
                          Text(
                            'Wrong Answers',
                            style: TextStyle(
                              color: Color(0xFF0D0D0D),
                              fontSize: 20,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0.04,
                            ),
                          ),
                          SizedBox(
                            height: 37.h,
                          ),
                          answer(
                            tickcross: 'assets/images/cross.svg',
                            textt: 'There are  9 vowels in english',
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          answer(
                            tickcross: 'assets/images/cross.svg',
                            textt: 'There are  12 vowels in english',
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          answer(
                            tickcross: 'assets/images/cross.svg',
                            textt: 'There are  15 vowels in english',
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                        ],
                      ),
                    ),
                  )
                ])))));
  }
}
