import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final Widget title;
  final double corner;
  final Color color;
  final Function ontap;
  const Buttons({this.title, this.corner, this.color, this.ontap});

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return RaisedButton(
      onPressed: ontap,
      child: title,
      color: color,
      
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(corner),
      ),
    );
  }
}
