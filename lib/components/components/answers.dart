import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class answer extends StatelessWidget {
  String textt;
  final String tickcross;

  answer({required this.textt, required this.tickcross});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 388,
      height: 56,
      padding: const EdgeInsets.only(
        top: 16,
        left: 19,
        right: 25.42,
        bottom: 16,
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
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            textt,
            style: TextStyle(
              color: Color(0xFF242222),
              fontSize: 16,
              fontFamily: 'DM Sans',
              fontWeight: FontWeight.w500,
              height: 0.09,
            ),
          ),
          const SizedBox(width: 113),
          SvgPicture.asset(
            tickcross,
            width: 20,
            height: 20,
          ),
        ],
      ),
    );
  }
}
