import 'package:flutter/material.dart';
import 'package:shopapp/models/cart.dart';
import 'package:shopapp/models/orders.dart';
import 'package:shopapp/screens/edit_product_screen.dart';
import 'package:shopapp/screens/orders_screen.dart';
import 'package:shopapp/screens/product_detail_screen.dart';
import 'package:shopapp/screens/products_overview_screen.dart';
import 'package:shopapp/models/products_provider.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/screens/cart_screen.dart';
import 'package:shopapp/screens/user_products_screen.dart';

// Created By Mahmoud El Shenawy (Email : Mr.Mahmoud.El.Shenawy@Gmail.com)

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'Shop App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.deepOrangeAccent,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routName: (context) => ProductDetailScreen(),
          CartScreen.routeName: (context) => CartScreen(),
          OrdersScreen.routeName: (context) => OrdersScreen(),
          UserProductsScreen.routeName: (context) => UserProductsScreen(),
          EditProductScreen.routeName: (context) => EditProductScreen(),
        },
      ),
    );
  }
}
