import 'package:dro_health/Widgets/consts.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final  Widget title;

  const CustomAppbar({this.title});

  @override
  Widget build(BuildContext context) {
    //CUSTOM APPBAR
    return AppBar(
      backgroundColor: kAppBarColor,
      elevation: 0,
      centerTitle: true,
      title: title
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
