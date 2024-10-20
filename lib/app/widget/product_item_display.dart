import 'package:flutter/material.dart';

import '../data/model/products.dart';

class ProductItemDisplay extends StatelessWidget {
  final Grocery grocery;

  const ProductItemDisplay({super.key, required this.grocery});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.55,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  right: 60,
                  child: Container(
                    decoration:
                        BoxDecoration(shape: BoxShape.circle, boxShadow: [
                      BoxShadow(
                          offset: const Offset(5, 5),
                          blurRadius: 30,
                          spreadRadius: 15,
                          color: grocery.color.withOpacity(0.2)),
                    ]),
                  ),
                ),
                Center(
                  child: Image.asset(
                    grocery.image,
                    height: 160,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
