import 'package:flutter/material.dart';
import 'package:milan_shop/helpers/product.dart';
import 'package:milan_shop/helpers/product_provider.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatefulWidget {
  static const routeName = '/product-view';
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  bool _isinit = true;
  String categoryTitle;
  int categoryId;
  List<Product> product;
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    if (_isinit) {
      final routeData =
          ModalRoute.of(context).settings.arguments as Map<String, dynamic>;
      categoryTitle = routeData['title'];
      categoryId = routeData['id'];
      final list = Provider.of<ProductProvider>(context).getProduct(categoryId);
      print(list.length);
      setState(() {
        product = list;
      });
      // Provider.of<ProductProvider>(context, listen: false)
      //     .getProduct(categoryId);
      _isinit = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body:
          // FutureBuilder(
          //   future: Provider.of<ProductProvider>(context,listen: false).getProduct(categoryId),
          //         builder: (context,snapshot) => Container(
          // child:
          GridView.builder(
        padding: EdgeInsets.all(10),
        itemCount: product.length,
        itemBuilder: (ctx, i) => ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GridTile(
            child: GestureDetector(
              onTap: () {
                // Navigator.of(context).pushNamed(ProductDetailsScreen.routeName,
                //     arguments: product.id);
              },
              // child: Hero(
              // tag: product.id,
              child: FadeInImage(
                placeholder:
                    AssetImage('assets/images/product-placeholder.png'),
                image: NetworkImage(product[i].imageUrl),
                fit: BoxFit.cover,
              ),
              // ),
            ),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              // leading: Consumer<Product>(
              //   builder: (ctx, product, child) => IconButton(
              //     icon: Icon(
              //         product.isFavorite ? Icons.favorite : Icons.favorite_border),
              //     color: Theme.of(context).colorScheme.secondary,
              //     onPressed: () {
              //       product.toggleFavorite(authData.token, authData.userId);
              //     },
              //   ),
              // ),
              title: Text(
                product[i].title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Theme.of(context).colorScheme.secondary,
                onPressed: () {
                  // cart.addItem(product.id, product.title, product.price);
                  Scaffold.of(context).hideCurrentSnackBar();
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Added Item to Cart!'),
                      duration: Duration(seconds: 2),
                      action: SnackBarAction(
                        onPressed: () {
                          // cart.removeSingleItem(product.id);
                        },
                        label: 'UNDO',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
      // ),
      // ),
    );
  }
}
