import 'package:flutter/material.dart';
import 'package:grocery_app/app/utils/color_utils.dart';

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
            padding: const EdgeInsets.all(10),
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
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  grocery.name,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          grocery.category,
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.black26),
                        ),
                        Text(
                          "\$${grocery.price.toStringAsFixed(2)}",
                          style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: textGreen),
                        )
                      ],
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.orange[900],
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                        ),
                      ),
                      child: const Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
