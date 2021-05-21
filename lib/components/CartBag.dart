import 'package:dro_health/Models/Addproducts.dart';
import 'package:dro_health/Widgets/consts.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class CartBag extends StatefulWidget {
  @override
  _CartBagState createState() => _CartBagState();
}

class _CartBagState extends State<CartBag> {
    final ScrollController listViewController = new ScrollController();
  @override
  Widget build(BuildContext context) {
    //THE SLIDE UP SCREEN
    var ccart = Provider.of<Cart>(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        color: kDarkPurple,
        child: ListView.builder(
          itemCount: ccart.items.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0)),
                            ),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100.0)),
                              child: Image.network(
                                ccart.items[index].item_Image,
                                width: 100,
                                fit: BoxFit.contain,
                              ),
                            ),
                          )
                          // ClipRRect(
                          //   borderRadius: BorderRadius.circular(100.0),
                          //   child: Image.network(
                          //     ccart.items[index].item_Image,
                          //     width: 20,
                          //     height: 100,
                          //   ),
                          // ),
                          )),
                  Expanded(
                    child: Text("${ccart.items[index].item_Name}",
                        style: kButtonText),
                  ),
                  Spacer(),
                  Text("N${ccart.items[index].item_Price}", style: kButtonText),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
