// import 'package:app/components/nxtpage.dart';
// import 'package:app/components/textfield.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kidsguide/screens/HOME/home.dart';
import 'package:kidsguide/subscritopnprocess/SubscriptionProcess/bankdetails.dart';

class opinion extends StatelessWidget {
  const opinion({super.key});

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
                    padding: EdgeInsets.only(top: 40.h, right: 350.w),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => bankdetails()),
                        );
                      },
                      child: SvgPicture.asset(
                        'assets/images/arrows.svg',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  Container(
                    width: _width * 0.80,
                    height: _height * 0.20,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/u.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Image(
                  //   height: _height * 0.25,
                  //   image: AssetImage(
                  //     'assets/images/uu.png',
                  //   ),
                  // ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    width: _width * 0.80,
                    height: _height * 0.50,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF9F9F9),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF0282C7)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Text(
                          'Your opinion matters to us',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.03,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: _width * 0.70,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFF0282C7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Color(0xFF0282C7),
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
//                    RatingBar(
//  initialRating: 3,
//  direction: Axis.horizontal,
//  allowHalfRating: true,
//  itemCount: 5,
//  ratingWidget: RatingWidget(
//     full: SvgPicture.asset(
//       'assets/heart.svg',
//       color: Color(0xFF0282C7),
//     ),
//     half: SvgPicture.asset(
//       'assets/heart_half.svg',
//       color: Color(0xFF0282C7),
//     ),
//     empty: SvgPicture.asset(
//       'assets/heart_border.svg',
//       color: Color(0xFF0282C7),
//     ),
//  ),
//  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//  onRatingUpdate: (rating) {
//     print(rating);
//  },
// ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 20,
                            right: 30,
                          ),
                          child: TextField(
                            minLines: 7,
                            maxLines: 8,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Color(0xFF0282C7)),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 3,
                                  color: Color(0xFF0282C7),
                                ),
                                borderRadius: BorderRadius.circular(18),
                              ),
                              border: const OutlineInputBorder(),
                              hintText: 'Leave a message (Optional)',
                              hintStyle: TextStyle(
                                color: Color(0xFF0282C7),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => homme()),
                            );
                          },
                          child: Container(
                            width: _width * 0.70,
                            height: 50.47,
                            child: Center(
                              child: Text(
                                'Rate Now',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            decoration: ShapeDecoration(
                              color: Color(0xFF0282C7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ])))));
  }
}
