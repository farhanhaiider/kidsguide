import 'package:flutter/material.dart';

// ignore: must_be_immutable
class nxtpage extends StatelessWidget {
  String name;

  nxtpage({required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 57,
      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 18),
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
            name,
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
    );
  }
}
