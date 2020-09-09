import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final int cId;
  final String id;
  final String title;
  final String imageUrl;

  Product(
      {@required this.cId,
      @required this.id,
      @required this.title,
      @required this.imageUrl});
}
