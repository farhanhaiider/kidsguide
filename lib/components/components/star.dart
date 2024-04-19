import 'package:flutter/material.dart';

class star extends StatelessWidget {
  const star({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(
        'assets/images/Star3.png',
      ),
    );
  }
}
