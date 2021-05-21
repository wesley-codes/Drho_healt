import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchText extends StatelessWidget {
  final Function onPress;

  const SearchText({Key key, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      padding: EdgeInsets.only(left: 10, right: 10),
      child: TextField(
        onTap: onPress,
        decoration: InputDecoration(
          prefixIcon: Icon(FontAwesomeIcons.search,size: 15,),
          suffixIcon: Icon(FontAwesomeIcons.closedCaptioning),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
