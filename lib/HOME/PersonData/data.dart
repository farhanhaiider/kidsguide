// import 'package:app/components/containerr.dart';
// import 'package:app/components/container.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidsguide/components/components/nxtpage.dart';
import 'package:kidsguide/components/components/textfield.dart';
import 'package:kidsguide/components/components/user.dart';
import 'package:kidsguide/screens/HOME/PersonData/profile.dart';
import 'package:kidsguide/screens/HOME/home.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();
  final namecontroller = TextEditingController();
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
                          width: 140,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                            color: Color(0xFF0A1828),
                            fontSize: 18,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.06,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  user(),
                  SizedBox(
                    height: 60.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name ',
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
                        controler: namecontroller,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        'Name ',
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
                        controler: emailcontroller,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        'Password ',
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
                        controler: passwordcontroller,
                      ),
                      SizedBox(
                        height: 25.h,
                      ),
                      Text(
                        'Rewrite Password',
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
                        controler: confirmpasswordcontroller,
                      ),
                      SizedBox(
                        height: 165.h,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => homme()),
                            );
                          },
                          child: nxtpage(name: 'Update'))
                    ],
                  ),
                ])))));
  }
}
