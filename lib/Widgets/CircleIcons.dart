import 'package:dro_health/Widgets/consts.dart';
import 'package:flutter/material.dart';

class AwesomeIcons extends StatelessWidget {
  final IconData icon;
  const AwesomeIcons({
    this.icon,
  });
//CIRCULAR ICON WIDGET
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        child: Icon(
          icon,
          color: kIconColor,
          size: 20,
        ),
        backgroundColor: kCircleAvatar);
  }
}
