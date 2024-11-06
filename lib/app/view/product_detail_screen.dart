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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(height: 350),
                Positioned(
                  bottom: 30,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 12,
                          spreadRadius: 20,
                          color: widget.product.color.withOpacity(0.1),
                        ),
                      ],
                    ),
                  ),
                ),
                ClipPath(
                  clipper: ClipPathDetail(),
                  child: Container(
                    height: 300,
                    width: size.width,
                    color: widget.product.color.withOpacity(0.15),
                  ),
                ),
                Positioned(
                  bottom: -30,
                  left: 20,
                  right: 20,
                  child: Hero(
                    tag: widget.product.image,
                    child: Image.asset(
                      widget.product.image,
                      width: size.width,
                      height: 400,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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

class ClipPathDetail extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height + 50,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}