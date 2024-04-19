import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class drawercont extends StatelessWidget {
  final String name;
  final String icon;
  drawercont({required this.name, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 288,
      height: 59,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 20.w,
          ),
          Text(
            name,
            style: TextStyle(
              color: Color(0xFF4EA7D8),
              fontSize: 20,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          )
        ],
      ),
    );
  }
}
