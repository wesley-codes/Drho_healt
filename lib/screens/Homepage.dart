import 'package:dro_health/Models/Store.dart';
import 'package:dro_health/components/BodySection.dart';
import 'package:dro_health/components/CustomAppBar.dart';
import 'package:dro_health/screens/DraggableSheet.dart';
import 'package:dro_health/Widgets/consts.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: deprecated_member_use

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        Scaffold(
            backgroundColor: kBackGroundColor,
            appBar: CustomAppbar(
                title: Text(
              "${storeItems.length}Items(s)",
              style: kAppBarTitle,
            )),
            body: Body()),
        DraggableContainer()
      ],
    );
  }
}
