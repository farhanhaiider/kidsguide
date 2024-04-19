import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidsguide/components/components/nxtpage.dart';
import 'package:kidsguide/subscritopnprocess/SubscriptionProcess/bankdetails.dart';
import 'package:kidsguide/subscritopnprocess/SubscriptionProcess/subscription.dart';

class payment extends StatelessWidget {
  const payment({super.key});

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
                                  builder: (context) => subscription()),
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
                          'Choose Payment Method',
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
                    height: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Recently Used',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          height: 0.04,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: _width * 0.95,
                        height: _height * 0.17,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/cardd.png',
                            ),
                          ),
                          color: Color(0x5E0282C7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Saved Cards',
                        style: TextStyle(
                          color: Color(0xFF0D0D0D),
                          fontSize: 15,
                          fontFamily: 'Anonymous Pro',
                          fontWeight: FontWeight.w700,
                          height: 0,
                          letterSpacing: 0.82,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: _width * 0.95,
                        height: _height * 0.17,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/cardd.png',
                            ),
                          ),
                          color: Color(0xFF0282C7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 300),
                        child: Text(
                          'Add New',
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 15,
                            fontFamily: 'Anonymous Pro',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: 0.82,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 126.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const bankdetails()),
                            );
                          },
                          child: nxtpage(name: 'Proceed'))
                    ],
                  )
                ])))));
  }
}
