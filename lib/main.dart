import 'package:flutter/material.dart';
import 'package:milan_shop/helpers/category_provider.dart';
import 'package:milan_shop/helpers/product_provider.dart';
import 'package:milan_shop/screens/category_screen.dart';
import 'package:milan_shop/screens/product_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: CategoryProvider()),
        ChangeNotifierProvider.value(value: ProductProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: CategoryScreen(),
        routes: {
          ProductScreen.routeName: (context) => ProductScreen(),
        },
      ),
    );
  }
}
