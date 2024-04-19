import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class containerr extends StatelessWidget {
  final Color containercolor;
  final containerside;
  final IconData icon;

  const containerr(
      {required this.containercolor,
      required this.containerside,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width * 0.94,
      height: _height * 0.05,
      child: Padding(
        padding: EdgeInsets.only(left: 20.w),
        child: Row(
          children: [
            Text(
              '5',
              style: TextStyle(
                color: Color(0xFF060505),
                fontSize: 14,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(width: 313.w),
            Icon(
              icon,
              color: Colors.green,
              size: 40,
            )
          ],
        ),
      ),
      decoration: ShapeDecoration(
        color: containercolor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), side: containerside),
      ),
    );
  }
}
