import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidsguide/QUIZ/QUIZ/algebra.dart';
import 'package:kidsguide/screens/HOME/home.dart';
import 'package:kidsguide/screens/HOME/notifications.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class maths extends StatelessWidget {
  const maths({super.key});

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
                      'assets/images/back6.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                    child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 20.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20.w, right: 20.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => homme()),
                                  );
                                },
                                child: SvgPicture.asset(
                                  'assets/images/arrows.svg',
                                  width: 20,
                                  height: 20,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const notifications()),
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
                        Image(
                          height: 120,
                          image: AssetImage(
                            'assets/images/mm.png',
                          ),
                        ),
                        Container(
                          width: 340,
                          height: 8,
                          decoration: BoxDecoration(color: Color(0xFF064DAE)),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Column(
                          children: [
                            Text(
                              'CHOOSE TOPIC ',
                              style: TextStyle(
                                color: Color(0xFF0D0D0D),
                                fontSize: 20,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w700,
                                height: 0.06,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              '20 Quiz Topic',
                              style: TextStyle(
                                color: Color(0xFF131111),
                                fontSize: 16,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.10,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.w, top: 15.h),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const algebra()),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(59.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/Image1.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ALGEBRA',
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
                              '15 MCQS',
                              style: TextStyle(
                                color: Color(0xFF737171),
                                fontSize: 16,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.10,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40.w),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const algebra()),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(59.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/Image1.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'GEOMETRY',
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
                              '30 MCQS',
                              style: TextStyle(
                                color: Color(0xFF737171),
                                fontSize: 16,
                                fontFamily: 'DM Sans',
                                fontWeight: FontWeight.w500,
                                height: 0.10,
                              ),
                            ),
                          ],
                        ),
                      ]),
                )))));
  }
}
