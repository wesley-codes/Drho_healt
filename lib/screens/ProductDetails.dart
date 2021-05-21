import 'package:dro_health/Models/Addproducts.dart';
import 'package:dro_health/components/ProductDetail.dart';
import 'package:dro_health/components/ProductDetailAppbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//PASSING PRODUCTS TO DETAILS SCREEN
class ProductDetails extends StatefulWidget {
  final String productImage;
  final String productName;
  final int productprice;
  final String productSubtitle;
  final String productSupplier;
  final String productSize;
  final String productConstituents;
  final String productID;
  final String productDespensed;
  const ProductDetails(
      {Key key,
      this.productImage,
      this.productName,
      this.productprice,
      this.productSubtitle,
      this.productSupplier,
      this.productSize,
      this.productConstituents,
      this.productID,
      this.productDespensed})
      : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProductDetailBar(),
      body: SafeArea(
        child: Consumer<Cart>(
          builder: (context, value, child) {
            return ProductDetailCard(
              productImage: "${widget.productImage}",
              productName: "${widget.productName}",
              productSubtitle: "${widget.productSubtitle}",
              productSupplier: "${widget.productSupplier}",
              productprice: widget.productprice,
              productConstituents: "${widget.productConstituents}",
              productDespensed: "${widget.productDespensed}",
              productID: "${widget.productID}",
              productSize: "${widget.productSize}",
            );
          },
        ),
      ),
    
    );
  }
}
