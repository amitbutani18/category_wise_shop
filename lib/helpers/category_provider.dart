import 'package:flutter/material.dart';
import 'package:milan_shop/helpers/category.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> _category = [
    Category(
        id: 3,
        title: 'Clothes',
        imageUrl:
            'https://static.independent.co.uk/s3fs-public/thumbnails/image/2019/04/10/16/online-clothes-shops-hero.jpg'),
    Category(
        id: 2,
        title: 'Smart Phone',
        imageUrl:
            'https://i.postimg.cc/7ZTpb7R8/icons8-beetroot-and-carrot-64.png'),
    Category(
        id: 1,
        title: 'Laptop',
        imageUrl: 'https://i.postimg.cc/Fz9PZkGR/icons8-fruit-bag-48.png'),
    Category(
        id: 4,
        title: 'Grocery',
        imageUrl: 'https://i.postimg.cc/BnWFff95/icons8-cake-48.png'),
    Category(
        id: 5,
        title: 'Watch',
        imageUrl: 'https://i.postimg.cc/Lsvh5nhS/icons8-milk-bottle-48.png'),
    Category(
        id: 6,
        title: 'Mobile Accessories',
        imageUrl: 'https://i.postimg.cc/brDZ43mF/icons8-heart-health-64.png'),
  ];

  List<Category> get category {
    return [..._category];
  }
}
