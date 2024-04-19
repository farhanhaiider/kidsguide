import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class containerr1 extends StatelessWidget {
  final String name;
  final Color Textcolor;
  final String icon;
  containerr1(
      {required this.name, required this.Textcolor, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388,
      height: 56,
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            width: 40,
            height: 40,
          ),
          Container(
            width: 141,
            height: 40,
            padding: const EdgeInsets.only(right: 9),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 10),
                Text(
                  name,
                  style: TextStyle(
                    color: Textcolor,
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    height: 0.09,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 160,
          ),
          SvgPicture.asset(
            'assets/images/forward.svg',
            width: 40,
            height: 40,
          ),
        ],
      ),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x1E000000),
            blurRadius: 10,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
    );
  }
}
