import 'package:dro_health/Widgets/Icons.dart';
import 'package:dro_health/Widgets/consts.dart';
import 'package:flutter/material.dart';




class WaterialButton extends StatelessWidget {
  final Function onTap;
  const WaterialButton({this.onTap,});


  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        padding: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        constraints: BoxConstraints(maxHeight: 100.0),
        fillColor: klightPurple,
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Iconsdata(Icontype: Icons.shopping_bag, color: Colors.white),
            SizedBox(
              width: 20,
            ),
            Text("Add To Bag"),
          ],
        ));
  }
}
