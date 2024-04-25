import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  static const route = "/product";
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Product Page")),
    );
  }
}
