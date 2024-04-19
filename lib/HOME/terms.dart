import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidsguide/HOME/home.dart';
import 'package:kidsguide/components/components/nxtpage.dart';

class terms extends StatelessWidget {
  const terms({super.key});

  @override
  Widget build(BuildContext context) {
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
                        SvgPicture.asset(
                          'assets/images/arrows.svg',
                          width: 20,
                          height: 20,
                        ),
                        SizedBox(
                          width: 120.w,
                        ),
                        Text(
                          'TERMS AND CONDITION',
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 20,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w400,
                            height: 0,
                            letterSpacing: 1.10,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 388,
                    height: 500,
                    decoration: ShapeDecoration(
                      color: Color(0xFF115073),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFF115073)),
                      ),
                      // shadows: [
                      //     BoxShadow(
                      //         color: Color(0x19000000),
                      //         blurRadius: 10,
                      //         offset: Offset(0, 4),
                      //         spreadRadius: 0,
                      //     )
                      // ],
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => home()),
                        );
                      },
                      child: nxtpage(name: 'Agree and Continue'))
                ])))));
  }
}
