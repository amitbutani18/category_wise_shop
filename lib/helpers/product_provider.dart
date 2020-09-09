import 'package:flutter/material.dart';
import 'package:milan_shop/helpers/product.dart';

class ProductProvider with ChangeNotifier {
  // List<Product> _items = [
  //   Product(
  //       cId: 1,
  //       id: DateTime.now().toString(),
  //       title: 'Laptop',
  //       imageUrl:
  //           'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
  //   Product(
  //       cId: 1,
  //       id: DateTime.now().toString(),
  //       title: 'mobile',
  //       imageUrl:
  //           'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png'),
  //   Product(
  //       cId: 2,
  //       id: DateTime.now().toString(),
  //       title: 'phone',
  //       imageUrl:
  //           'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
  //   Product(
  //       cId: 1,
  //       id: DateTime.now().toString(),
  //       title: 'hello',
  //       imageUrl:
  //           'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
  //   Product(
  //       cId: 1,
  //       id: DateTime.now().toString(),
  //       title: 'lodo',
  //       imageUrl:
  //           'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png'),
  //   Product(
  //       cId: 2,
  //       id: DateTime.now().toString(),
  //       title: 'levo',
  //       imageUrl:
  //           'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
  //   Product(
  //       cId: 1,
  //       id: DateTime.now().toString(),
  //       title: 'aor',
  //       imageUrl:
  //           'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
  //   Product(
  //       cId: 1,
  //       id: DateTime.now().toString(),
  //       title: 'kndks',
  //       imageUrl:
  //           'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png'),
  //   Product(
  //       cId: 2,
  //       id: DateTime.now().toString(),
  //       title: 'Miknfdkjglk',
  //       imageUrl:
  //           'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
  // ];

  // List<Product> get items {
  //   return [..._items];
  // }

  List<Product> getProduct(int catId) {
    List<Product> list = [];
    for (var i = 0; i < productList.length; i++) {
      print(productList[i].title);
      print(catId);
      if (productList[i].cId == catId) {
        print("In hbfjdbhj" + productList[i].title);
        list.add(productList[i]);
      }
    }
    return list;
  }

  List<Product> productList = [
    Product(
        cId: 1,
        id: DateTime.now().toString(),
        title: 'Laptop',
        imageUrl:
            'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
    Product(
        cId: 1,
        id: DateTime.now().toString(),
        title: 'mobile',
        imageUrl:
            'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png'),
    Product(
        cId: 3,
        id: DateTime.now().toString(),
        title: 'phone',
        imageUrl:
            'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
    Product(
        cId: 1,
        id: DateTime.now().toString(),
        title: 'hello',
        imageUrl:
            'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
    Product(
        cId: 1,
        id: DateTime.now().toString(),
        title: 'lodo',
        imageUrl:
            'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png'),
    Product(
        cId: 3,
        id: DateTime.now().toString(),
        title: 'levo',
        imageUrl:
            'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
    Product(
        cId: 1,
        id: DateTime.now().toString(),
        title: 'aor',
        imageUrl:
            'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
    Product(
        cId: 1,
        id: DateTime.now().toString(),
        title: 'kndks',
        imageUrl:
            'https://www.talkwalker.com/images/2020/blog-headers/image-analysis.png'),
    Product(
        cId: 2,
        id: DateTime.now().toString(),
        title: 'Miknfdkjglk',
        imageUrl:
            'https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg'),
  ];
}
