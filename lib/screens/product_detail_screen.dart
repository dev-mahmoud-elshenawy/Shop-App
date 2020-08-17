import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/models/products_provider.dart';

// Created By Mahmoud El Shenawy (Email : Mr.Mahmoud.El.Shenawy@Gmail.com)

class ProductDetailScreen extends StatelessWidget {
  static const routName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId =
        ModalRoute.of(context).settings.arguments as String; // is the id
    final loadedProduct = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            height: 300,
            width: double.infinity,
            child: Image.network(
              loadedProduct.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            '\$${loadedProduct.price}',
            style: TextStyle(
              color: Colors.orangeAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Text(
              loadedProduct.description,
              textAlign: TextAlign.center,
              softWrap: true,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.deepOrange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
