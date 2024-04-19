import 'package:flutter/material.dart';
import 'package:kidsguide/subscritopnprocess/SubscriptionProcess/yearly.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Toggleswitch extends StatelessWidget {
  const Toggleswitch({super.key});

  @override
  Widget build(BuildContext context) {
    return ToggleSwitch(
      minWidth: 90.0,
      cornerRadius: 20.0,
      activeBgColors: [
        [Colors.white],
        [Colors.white]
      ],
      activeFgColor: Colors.black,
      inactiveBgColor: Color(0xFF0282C7),
      inactiveFgColor: Colors.black,
      initialLabelIndex: 0,
      totalSwitches: 2,
      labels: ['Monthly', 'Yearly'],
      radiusStyle: true,
      onToggle: (index) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => yearly()));
      },
    );
  }
}
