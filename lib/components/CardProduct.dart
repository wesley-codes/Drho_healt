import 'package:dro_health/Widgets/Icons.dart';
import 'package:dro_health/Widgets/consts.dart';
import 'package:flutter/material.dart';

class ProductInquiry extends StatelessWidget {
  final Widget title;
  final Widget material;
  final IconData icon;

  const ProductInquiry({Key key, this.title, this.icon, this.material})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Iconsdata(
        Icontype: icon,
        color: kDarkPurple,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [title, material],
      ),
    ]);
  }
}
