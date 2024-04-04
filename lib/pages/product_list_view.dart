import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductListView extends StatefulWidget {
  const ProductListView({super.key});

  @override
  State<ProductListView> createState() => _ProductListViewState();
}

class _ProductListViewState extends State<ProductListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (c, i) => ElevatedButton(
          onPressed: () => context.go('/products/$i'),
          child: Text('$i Product'),
        ),
      ),
    );
  }
}
