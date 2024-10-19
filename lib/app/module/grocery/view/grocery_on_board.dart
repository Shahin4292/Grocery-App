import 'package:flutter/material.dart';
import 'package:grocery_app/app/utils/app_assets.dart';

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
              color: onBoardBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Image.asset(AppAssets.onBoardingProfile),
              ),
            ),
          )
        ],
      ),
    );
  }
}
