import 'package:dro_health/Models/Store.dart';
import 'package:dro_health/Widgets/Button.dart';
import 'package:dro_health/Widgets/consts.dart';
import 'package:dro_health/screens/ProductDetails.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatefulWidget {
  @override
  _ProductContainerState createState() => _ProductContainerState();
}

class _ProductContainerState extends State<ProductContainer> {
  // ignore: deprecated_member_use
  
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      // childAspectRatio: (2 / 2),
      children: List<Widget>.generate(
        storeItems.length,
        (index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ProductDetails(
                    //PASSING PRODUCTS TO DETAILS VIEW
                      productImage: storeItems[index].item_Image,
                      productName: storeItems[index].item_Name,
                      productprice: storeItems[index].item_Price,
                      productSubtitle: storeItems[index].item_Subtitle,
                      productSupplier: storeItems[index].item_Supplier,
                      productSize: storeItems[index].item_Size,
                      productConstituents: storeItems[index].item_Constituents,
                      productID: storeItems[index].id,
                      productDespensed: storeItems[index].item_Despensed
                      ),
                ),
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Center(
                        child: Image.network(storeItems[index].item_Image),
                      ),
                    ),
                    Text(
                      "${storeItems[index].item_Name}",
                      style: kContainerText,
                    ),
                    Text(
                      storeItems[index].item_Subtitle,
                      style: kContainerTextSubtitle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Buttons(
                          corner: 30,
                          title: Text(
                            "N${storeItems[index].item_Price}",
                            style: kButtonText,
                          ),
                          color: Color(0xff909090),

                          // title: "N${items[index].item_Price}",
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
