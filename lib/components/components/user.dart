import 'package:flutter/material.dart';

class user extends StatelessWidget {
  const user({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(59.0),
      child: Image(
        image: AssetImage(
          'assets/images/user.png',
        ),
      ),
    );
  }
}
