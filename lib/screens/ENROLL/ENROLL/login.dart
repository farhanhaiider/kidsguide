import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kidsguide/components/components/nxtpage.dart';
import 'package:kidsguide/components/components/textfield.dart';
import 'package:kidsguide/screens/ENROLL/ENROLL/signup.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({Key? key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final confirmpasswordcontroller = TextEditingController();
  final namecontroller = TextEditingController();

  void dispose() {
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
    namecontroller.dispose();
  }

  Future<void> mysignin() async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailcontroller.text, password: passwordcontroller.text);

      Loginscreen();
    } catch (e) {
      print(e);
    }
  }

  Future Loginscreen() async {
    // if (passwordConfirmed()) {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailcontroller.text.trim(),
        password: passwordcontroller.text.trim());

    addUserDetails(
      emailcontroller.text.trim(),
      namecontroller.text.trim(),
      passwordcontroller.text.trim(),
      confirmpasswordcontroller.text.trim(),
    );
    // }
  }

  Future addUserDetails(
      String name, String address, String email, String contact) async {
    await FirebaseFirestore.instance.collection('users').add({
      'Name': name,
      'Email': email,
    });
  }

  bool passwordConfirmed() {
    if (passwordcontroller.text.trim() ==
        confirmpasswordcontroller.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

// class _LoginscreenState extends State<Loginscreen> {
//   State<Loginscreen> createState() => _LoginscreenState();

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
            child: Column(
              children: [
                Padding(
                    padding:
                        EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
                    child: Container(
                      width: _width * 1,
                      height: _height * 0.20,
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/kid1.png',
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    )),
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Sign Up ',
                  style: TextStyle(
                    color: Color(0xFF0A1828),
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w600,
                    height: 0.04,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Color(0xFF0D0D0D),
                        fontSize: 13,
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        height: 0.15,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    formfield(
                      controler: namecontroller,
                    ),
                    SizedBox(
                      height: 15.h,
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
                      height: 20,
                    ),
                    formfield(
                      controler: emailcontroller,
                    ),
                    SizedBox(
                      height: 15.h,
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
                      height: 20,
                    ),
                    formfield(
                      controler: passwordcontroller,
                    ),
                    SizedBox(
                      height: 15.h,
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
                      height: 20,
                    ),
                    formfield(
                      controler: confirmpasswordcontroller,
                    ),
                  ],
                ),
                SizedBox(
                  height: 120.h,
                ),
                GestureDetector(
                    onTap: () {
                      Loginscreen();
                    },
                    child: nxtpage(name: 'Sign In')),
                SizedBox(
                  height: 30.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 121),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        ' Already have an account? ',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black45,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => signup()));
                          //print("tapped!");
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Color(0xFF064DAE),
                            fontSize: 12,
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
