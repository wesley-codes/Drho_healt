import 'package:dro_health/Models/Store.dart';
import 'package:dro_health/Widgets/CircleIcons.dart';

import 'package:dro_health/Widgets/TextField.dart';

import 'package:dro_health/components/ProductContainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class Body extends StatefulWidget {
  @override


  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isSearch = false;
  // ignore: deprecated_member_use
  List<Store> items = List<Store>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AwesomeIcons(icon: FontAwesomeIcons.accessibleIcon),
              AwesomeIcons(icon: Icons.filter_3_sharp),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _isSearch = !_isSearch;
                  });
                  print(
                    Text("search"),
                  );
                },
                child: AwesomeIcons(icon: FontAwesomeIcons.search),
              ),
            ],
          ),
          _isSearch
              ? SearchText(
                  onPress: () {
                    setState(() {
                      _isSearch = false;
                    });
                  },
                )
              : SizedBox(
                  height: 3,
                ),
          Expanded(child: ProductContainer()),
        ],
      ),
    );
  }
}
