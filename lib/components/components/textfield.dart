import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

class formfield extends StatefulWidget {
  final TextEditingController? controler;

  formfield({
    super.key,
    required this.controler,
  });

  @override
  State<formfield> createState() => _formfieldState();
}

class _formfieldState extends State<formfield> {
  late TextEditingController _controler;

  @override
  void initState() {
    super.initState();
    _controler = widget.controler ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    var _height = MediaQuery.of(context).size.height;
    var _width = MediaQuery.of(context).size.width;
    return Container(
      width: _width * 0.90,
      height: _height * 0.055,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFF2B74D2)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: TextField(
        controller: _controler,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF2B74D2)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Color(0xFF2B74D2), width: 2),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
        ),
      ),
    );
  }
}
