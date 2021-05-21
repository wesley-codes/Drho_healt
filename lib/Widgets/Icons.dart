import 'package:flutter/material.dart';

class Iconsdata extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final IconData Icontype;
  final Color color;
  const Iconsdata({
    // ignore: non_constant_identifier_names
    this.Icontype,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Icon(Icontype,color: color,);
  }
}
