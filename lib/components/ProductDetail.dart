import 'package:dro_health/Models/Addproducts.dart';
import 'package:dro_health/Models/Store.dart';
import 'package:dro_health/Widgets/Icons.dart';
import 'package:dro_health/Widgets/MaterialButton.dart';
import 'package:dro_health/Widgets/consts.dart';
import 'package:dro_health/components/CardProduct.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailCard extends StatefulWidget {
  final String productImage;
  final String productName;
  final String productSubtitle;
  final int productprice;
  final String productSupplier;
  final String productSize;
  final String productConstituents;
  final String productID;
  final String productDespensed;

  const ProductDetailCard(
      {Key key,
      this.productImage,
      this.productName,
      this.productprice,
      this.productSubtitle,
      this.productSupplier,
      this.productSize,
      this.productConstituents,
      this.productID,
      this.productDespensed});
  @override
  _ProductDetailCardState createState() => _ProductDetailCardState();
}

class _ProductDetailCardState extends State<ProductDetailCard> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    var ccart = Provider.of<Cart>(context);

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 20),
                height: 200,
                child: Image(
                  image: NetworkImage("${widget.productImage}"),
                ),
              ),
            ),
            Text(
              widget.productName,
              style: kProductDetailItemName,
            ),
            Text(
              widget.productSubtitle,
              style: kProductDetailItemSubtitle,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SOLD BY",
                          style: kProductDetailLightGrey,
                        ),
                        Text(
                          "${widget.productSupplier}",
                          style: kProductDetailItemSubtitle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        icon: Iconsdata(
                          Icontype: Icons.remove,
                        ),
                        onPressed: () {
                          setState(() {
                            // ignore: unnecessary_statements
                            (count > 1) ? count-- : null;
                          });
                        },
                      ),
                      Text(count.toString()),
                      IconButton(
                        icon: Iconsdata(
                          Icontype: Icons.add,
                        ),
                        onPressed: () {
                          setState(() {
                            count++;
                          });
                        },
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  margin: EdgeInsets.only(right: 8, bottom: 20, top: 20),
                ),
                Text("PACK(s)", style: kTextSubtitle),
                Spacer(),
                Text(
                  "N${widget.productprice}",
                  style: kProductDetaiItemPrice,
                )
              ],
            ),
            Text("PRODUCT DETAILS", style: kTextSubtitle),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductInquiry(
                      title: Text("PACKSIZE", style: kTextSubtitle),
                      material: Text("${widget.productSize}", style: kText),
                      icon: Icons.account_balance_outlined),
                  Spacer(),
                  ProductInquiry(
                    title: Text("PRODUCTID", style: kTextSubtitle),
                    material: Text("${widget.productID}", style: kText),
                    icon: Icons.battery_charging_full_outlined,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ProductInquiry(
                title: Text("CONSISTUENTS", style: kTextSubtitle),
                material: Text("${widget.productConstituents}", style: kText),
                icon: Icons.access_alarm_outlined,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ProductInquiry(
                title: Text("DESPENSED IN", style: kTextSubtitle),
                material: Text(
                  "${widget.productDespensed}",
                  style: kText,
                ),
                icon: Icons.access_alarm_outlined,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, bottom: 10),
          child: WaterialButton(
            onTap: () {
              ccart.addproducts(Store(
                  item_Price: widget.productprice,
                  item_Image: "${widget.productImage}",
                  item_Name: "${widget.productName}",
                  itemqyt: count));
            },
          ),
        ),
      ),
    );
  }
}
