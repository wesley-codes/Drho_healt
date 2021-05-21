import 'package:dro_health/Models/Store.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  final List<Store> items= [];
  
 

  

  // ignore: missing_return
void addproducts(Store store) {
    //add Items to cart
    items.add(store);
    notifyListeners();
  }

  // int numberofProducts() {
  //   return 
  // }
//GETTING NUMBER OF PRODUCTS PUSHED TO CARTS
  int get countProducts {
    return items.length;
  }

  void qty(int index) {
    items[index].itemqyt++;
  }
}
