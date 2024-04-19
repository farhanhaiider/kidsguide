import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidsguide/components/components/drawercontainer.dart';
import 'package:kidsguide/screens/HOME/PersonData/profile.dart';
import 'package:kidsguide/screens/HOME/maths.dart';
import 'package:kidsguide/screens/HOME/notifications.dart';
import 'package:kidsguide/screens/HOME/terms.dart';
import 'package:kidsguide/subscritopnprocess/SubscriptionProcess/payment.dart';

class home extends StatefulWidget {
  home({super.key});

  @override
  State<home> createState() => _hommeState();
}

class _hommeState extends State<home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            key: _key,
            drawer: Drawer(
                backgroundColor: Color(0xFF0282C7),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Color(0xFF4EA7D8),
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(102),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(68),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const editprofile()),
                        );
                      },
                      child: drawercont(
                        name: 'Profile',
                        icon: 'assets/images/Star.svg',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const payment()),
                        );
                      },
                      child: drawercont(
                        name: 'Payment Method',
                        icon: 'assets/images/Star.svg',
                      ),
                    ),
                    SizedBox(height: 20.h),
                    drawercont(
                      name: 'Help and Feedback',
                      icon: 'assets/images/Star.svg',
                    ),
                    SizedBox(height: 20.h),
                    drawercont(
                      name: 'Settings',
                      icon: 'assets/images/Star.svg',
                    ),
                    SizedBox(height: 20.h),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const terms()),
                        );
                      },
                      child: drawercont(
                        name: 'Terms and Conditions',
                        icon: 'assets/images/Star.svg',
                      ),
                    ),
                  ],
                )),
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
                    padding:
                        EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _key.currentState!.openDrawer();
                              // Scaffold.of(context).openDrawer();
                            });
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Icon(
                              Icons.menu,
                              color: Colors.blue,
                              size: 30,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const notifications()),
                            );
                          },
                          child: Icon(
                            Icons.notifications,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                      width: _width * 0.92,
                      height: 45,
                      decoration: ShapeDecoration(
                        color: Color(0xFF0282C7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
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
                      child: TextField(
                          decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        border: const OutlineInputBorder(),
                      ))),
                  SizedBox(
                    height: 50,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const maths()),
                      );
                    },
                    child: Container(
                      width: _width * 0.92,
                      height: _height * 0.17,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Image(
                            image: AssetImage(
                              'assets/images/mm.png',
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            width: 340,
                            height: 8,
                            decoration: BoxDecoration(color: Color(0xFF064DAE)),
                          )
                        ],
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0x4C0282C7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: _width * 0.92,
                    height: _height * 0.17,
                    child: Column(
                      children: [
                        Image(
                          height: 120,
                          image: AssetImage(
                            'assets/images/e.png',
                          ),
                        ),
                        Container(
                          width: 340,
                          height: 8,
                          decoration: BoxDecoration(color: Color(0xFF064DAE)),
                        )
                      ],
                    ),
                    decoration: ShapeDecoration(
                      color: Color(0xC40282C7),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  ),
                  SizedBox(
                    height: 85,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const maths()),
                      );
                    },
                    child: Container(
                      width: _width * 0.92,
                      height: _height * 0.17,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          Image(
                            image: AssetImage(
                              'assets/images/mm.png',
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Container(
                            width: 340,
                            height: 8,
                            decoration: BoxDecoration(color: Color(0xFF064DAE)),
                          )
                        ],
                      ),
                      decoration: ShapeDecoration(
                        color: Color(0x4C0282C7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Stack(children: [
                    Container(
                      width: 434,
                      height: 78,
                      color: Colors.transparent,
                      child: Padding(
                        padding: EdgeInsets.only(top: 25.h),
                        child: Stack(children: [
                          Positioned(
                              top: 5.h,
                              child: Container(
                                width: _width * 1,
                                height: _height * 0.06,
                                child: Padding(
                                  padding:
                                      EdgeInsets.only(right: 10.h, left: 10.h),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        Icons.home,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        width: 35.56,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              'assets/images/logo.png',
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    editprofile()),
                                          );
                                        },
                                        child: SvgPicture.asset(
                                          'assets/images/prsn.svg',
                                          width: 20,
                                          height: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                decoration: ShapeDecoration(
                                  color: Color(0xFF0282C7),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              )),
                        ]),
                      ),
                    ),
                    Positioned(
                        left: 100.w,
                        child: Container(
                          width: 220,
                          height: 37,
                          child: Center(
                              child: Text(
                            'Custom Quiz',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          )),
                          decoration: ShapeDecoration(
                            color: Color(0xFF0282C7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            shadows: [
                              BoxShadow(
                                color: Color(0x3F000000),
                                blurRadius: 4,
                                offset: Offset(0, 4),
                                spreadRadius: 0,
                              )
                            ],
                          ),
                        ))
                  ]),
                ])))));
  }
}
