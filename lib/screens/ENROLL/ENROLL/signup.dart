import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kidsguide/components/components/textfield.dart';
import 'package:kidsguide/screens/ENROLL/ENROLL/page1.dart';
import 'package:kidsguide/screens/HOME/home.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
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
                    'assets/images/bacck.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(children: [
                  Padding(
                      padding:
                          EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
                      child: Container(
                        width: _width * 0.80,
                        height: _height * 0.20,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/kid1.png',
                            ),
                            fit: BoxFit.contain,
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 10.w, top: 60),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Login to your Account',
                          style: TextStyle(
                            color: Color(0xFF0A1828),
                            fontSize: 22,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            height: 0.04,
                          ),
                        ),
                        SizedBox(
                          height: 60.h,
                        ),
                        Text(
                          'Email',
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 13,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0.15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        formfield(
                          controler: emailcontroller,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        Text(
                          'Password',
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 260.w),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => page1()));
                        //print("tapped!");
                      },
                      child: Text(
                        'Forget Password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF6A6A6A),
                          fontSize: 10,
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 61),
                  GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance
                          .signInWithEmailAndPassword(
                              email: emailcontroller.text,
                              password: passwordcontroller.text)
                          .then((value) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => homme()));
                      }).onError((error, stackTrace) {
                        print("Error ${error.toString()}");
                      });
                    },
                    child: Container(
                      width: _width * 0.79,
                      height: 57,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 60, vertical: 18),
                      decoration: ShapeDecoration(
                        color: Color(0xFF0282C7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 160.h,
                  ),
                  Text(
                    ' Already have an account? ',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black45,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ]),
              ),
            )));
  }
}
