import 'package:dro_health/Models/Addproducts.dart';
import 'package:dro_health/Widgets/Icons.dart';
import 'package:dro_health/Widgets/consts.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailBar extends StatefulWidget implements PreferredSizeWidget{
  @override
  _ProductDetailBarState createState() => _ProductDetailBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _ProductDetailBarState extends State<ProductDetailBar> {
  @override
  Widget build(BuildContext context) {
    var ccart = Provider.of<Cart>(context);
    return AppBar(
      backgroundColor: kAppBarColor,
      elevation: 0,
      leading: Iconsdata(Icontype: Icons.arrow_back,color:kIconColor ,),
      actions: [
        Container(
          width: 50,
          margin: EdgeInsets.only(top: 5, bottom: 5, right: 10),
          decoration: BoxDecoration(
            color: klightPurple,
            borderRadius: BorderRadius.circular(10), // radius of 10
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Iconsdata(
                  Icontype: Icons.shopping_bag_outlined,
                ),
                Text("${ccart.countProducts}")
              ],
            ),
          ),
        )
      ],
    );
  }
}
