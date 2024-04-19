import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidsguide/QUIZ/QUIZ/verbs.dart';
import 'package:kidsguide/screens/HOME/maths.dart';
import 'package:kidsguide/screens/HOME/notifications.dart';

class English extends StatelessWidget {
  const English({super.key});

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
                    'assets/images/back6.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                  child: Column(children: [
                    Padding(
                      padding:
                          EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
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
                    Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: Image(
                        width: _width * 1,
                        image: AssetImage(
                          'assets/images/eng.png',
                        ),
                      ),
                    ),
                    Container(
                      width: 340,
                      height: 8,
                      decoration: BoxDecoration(color: Color(0xFF064DAE)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 250.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                            height: 20,
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15.h),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Verbs()),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(55.0),
                              child: Image(
                                image: AssetImage(
                                  'assets/images/engg.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 250.w),
                          child: Column(
                            children: [
                              Text(
                                'VERBS',
                                style: TextStyle(
                                  color: Color(0xFF131111),
                                  fontSize: 20,
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w500,
                                  height: 0.06,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                '10 Ques',
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
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.h),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25.0),
                            child: Image(
                              image: AssetImage(
                                'assets/images/engg.png',
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'NOUNS',
                          style: TextStyle(
                            color: Color(0xFF131111),
                            fontSize: 20,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          '10 Ques',
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
                ),
              ),
            )));
  }
}
