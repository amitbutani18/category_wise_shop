import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milan_shop/helpers/category_provider.dart';
import 'package:milan_shop/screens/product_screen.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
//  static const routeName = '/category';

  void selectCategory(
    BuildContext context,
    int cId,
    String cTitle,
  ) {
    Navigator.of(context).pushNamed(ProductScreen.routeName, arguments: {
      'id': cId,
      'title': cTitle,
    });
  }

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<CategoryProvider>(context);
    final category = productData.category;
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoping Cart"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: category.length,
          itemBuilder: (ctx, i) => InkWell(
            onTap: () =>
                selectCategory(context, category[i].id, category[i].title),
            child: Card(
              color: Color.fromRGBO(240, 248, 255, 1),
              elevation: 5.0,
              child: Container(
                // padding: EdgeInsets.all(8),
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image: NetworkImage(category[i].imageUrl),
                //         fit: BoxFit.fill)),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(top: 28),
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(category[i].imageUrl),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      category[i].title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Theme.of(context).accentColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
