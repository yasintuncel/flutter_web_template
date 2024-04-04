import 'package:flutter/material.dart';

class ProductDetailView extends StatefulWidget {
  final String unitId;
  const ProductDetailView({super.key, required this.unitId});

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Product Details: ${widget.unitId}'),
      ),
    );
  }
}
