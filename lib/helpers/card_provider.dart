import 'package:flutter/cupertino.dart';

class Cart {
  final String id;
  final String pId;

  Cart({this.id, this.pId});
}

class CartProvider with ChangeNotifier {
  List<Cart> _items = [];
  List<Cart> get items {
    return [..._items];
  }

  void addItem(String proId) {}
}
