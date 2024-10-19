import 'package:flutter/material.dart';

import '../../../utils/color_utils.dart';

class GroceryOnBoard extends StatelessWidget {
  const GroceryOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ClipPath(
            child: Container(
              width: size.width,
              height: size.height * 0.6,
              color: textGreen,
            ),
          )
        ],
      ),
    );
  }
}
