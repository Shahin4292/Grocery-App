import 'package:flutter/material.dart';

import '../model/products.dart';
import '../utils/color_utils.dart';

class ProductDetailScreen extends StatefulWidget {
  final Grocery product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: headerParts(context),
    );
  }

  AppBar headerParts(BuildContext context) {
    return AppBar(
      leadingWidth: 80,
      backgroundColor: widget.product.color.withOpacity(0.15),
      actions: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: widget.product.color,
            ),
          ),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: widget.product.color,
            ),
          ),
        ),
        const SizedBox(width: 20),
      ],
    );
  }
}
