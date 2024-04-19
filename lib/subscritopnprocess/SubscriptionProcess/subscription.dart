// import 'package:app/components/star.dart';
// import 'package:app/components/toggleswitch.dart';

// import 'package:app/screens/HOME/homme.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidsguide/HOME/PersonData/profile.dart';
import 'package:kidsguide/components/components/nxtpage.dart';
import 'package:kidsguide/subscritopnprocess/SubscriptionProcess/payment.dart';
import 'package:kidsguide/subscritopnprocess/SubscriptionProcess/yearly.dart';
import 'package:toggle_switch/toggle_switch.dart';

class subscription extends StatelessWidget {
  const subscription({super.key});

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
                    padding: EdgeInsets.only(left: 20.w, top: 40.h),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => editprofile()),
                            );
                          },
                          child: SvgPicture.asset(
                            'assets/images/arrows.svg',
                            width: 20,
                            height: 20,
                          ),
                        ),
                        SizedBox(
                          width: 120.w,
                        ),
                        Text(
                          'Subscription Package ',
                          style: TextStyle(
                            color: Color(0xFF0A1828),
                            fontSize: 18,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 55.h,
                  ),
                  Text(
                    'Pick your plan',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      height: 0.03,
                    ),
                  ),
                  SizedBox(
                    height: 55.h,
                  ),
                  ToggleSwitch(
                    minWidth: 90.0,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.white],
                      [Colors.white]
                    ],
                    activeFgColor: Colors.black,
                    inactiveBgColor: Color(0xFF0282C7),
                    inactiveFgColor: Colors.black,
                    initialLabelIndex: 0,
                    totalSwitches: 2,
                    labels: ['Monthly', 'Yearly'],
                    radiusStyle: true,
                    onToggle: (index) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => yearly()));
                    },
                  ),
                  Image(
                    height: 200,
                    image: AssetImage(
                      'assets/images/ribon.png',
                    ),
                  ),
                  Container(
                    width: 402,
                    height: 149,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          'Standard',
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 18,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w700,
                            height: 0.06,
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        Text(
                          '20\$/month',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                      ],
                    ),
                    decoration: ShapeDecoration(
                      color: Color(0x3F70A8F5),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 4, color: Color(0xFF0072AF)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x1E000000),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 150.w),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFF0282C7),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Add Free',
                              style: TextStyle(
                                color: Color(0xFF0282C7),
                                fontSize: 18,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.06,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFF0282C7),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Infinity quiz play',
                              style: TextStyle(
                                color: Color(0xFF0282C7),
                                fontSize: 18,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.06,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFF0282C7),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Quiz print',
                              style: TextStyle(
                                color: Color(0xFF0282C7),
                                fontSize: 18,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.06,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color(0xFF0282C7),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'Customize quiz',
                              style: TextStyle(
                                color: Color(0xFF0282C7),
                                fontSize: 18,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.06,
                              ),
                            )
                          ],
                        ),
                      ],
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
                              builder: (context) => const payment()),
                        );
                      },
                      child: nxtpage(name: 'Purchase Now')),
                ])))));
  }
}
