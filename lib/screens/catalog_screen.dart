import 'package:flutter/material.dart';
import 'package:shoppy/screens/cart_screen.dart';
import 'package:shoppy/screens/catalog_products.dart';
import 'package:get/get.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CatalogProducts(),
            ElevatedButton(
                onPressed: () {},
                child: Text('Go to Cart'),
            ),
          ],
        ),
      ),
    );
  }
}
