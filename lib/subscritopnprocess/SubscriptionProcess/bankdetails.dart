import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidsguide/HOME/PersonData/opinion.dart';
import 'package:kidsguide/components/components/nxtpage.dart';
import 'package:kidsguide/components/components/textfield.dart';
import 'package:kidsguide/subscritopnprocess/SubscriptionProcess/payment.dart';

class bankdetails extends StatefulWidget {
  const bankdetails({super.key});

  @override
  State<bankdetails> createState() => _bankdetailsState();
}

class _bankdetailsState extends State<bankdetails> {
  final fullnamecontroller = TextEditingController();
  final cardnumbercontroller = TextEditingController();
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
                                  builder: (context) => payment()),
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
                          'Bank Details',
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
                    height: 50.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Choose Debit Card',
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 14,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.13,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 30.w, top: 20.h, right: 50.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 91,
                                height: 40,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/v.png',
                                    ),
                                  ),
                                  color: Color(0xFFAFDEF8),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFF0282C7)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              Container(
                                width: 91,
                                height: 40,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/mastercard.png',
                                    ),
                                  ),
                                  color: Color(0xFF0282C7),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFF0282C7)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                              Container(
                                width: 91,
                                height: 40,
                                decoration: ShapeDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/paypal.png',
                                    ),
                                  ),
                                  color: Color(0xFFAFDEF8),
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                        width: 1, color: Color(0xFF0282C7)),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Text(
                          'Card Number',
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 13,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.15,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        formfield(controler: cardnumbercontroller),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          'Full Name',
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 13,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.15,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        formfield(
                          controler: fullnamecontroller,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Expiry Date',
                                  style: TextStyle(
                                    color: Color(0xFF0D0D0D),
                                    fontSize: 13,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0.15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: _width * 0.40,
                                  height: _height * 0.052,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF064DAE)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xFF064DAE)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xFF064DAE), width: 2),
                                      ),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 32,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CVV',
                                  style: TextStyle(
                                    color: Color(0xFF0D0D0D),
                                    fontSize: 13,
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w500,
                                    height: 0.15,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  width: _width * 0.40,
                                  height: _height * 0.052,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                          width: 1, color: Color(0xFF064DAE)),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xFF064DAE)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                            color: Color(0xFF064DAE), width: 2),
                                      ),
                                      contentPadding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 300.h,
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => opinion()),
                              );
                            },
                            child: nxtpage(
                              name: 'Continue',
                            ))
                      ],
                    ),
                  )
                ])))));
  }
}
