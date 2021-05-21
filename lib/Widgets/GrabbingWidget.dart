import 'package:dro_health/Models/Addproducts.dart';
import 'package:dro_health/Widgets/consts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GrabbingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ccart = Provider.of<Cart>(context);
//SLIDING WIDGET FO PUSH UP SCREEN
    return Container(
        decoration: BoxDecoration(
          color: Color(0xff7B4397),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(blurRadius: 25, color: Colors.black.withOpacity(0.2)),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 10,
                    right: 110,
                  ),
                  width: 50,
                  height: 5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: kBackGroundColor,
                child: Text("${ccart.countProducts}", style: kText),
              ),
            )
          ],
        ));
  }
}
