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
            clipper: ClipPathOnBoard(),
            child: Container(
              width: size.width,
              height: size.height * 0.6,
              color: onBoardBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.only(top: 45),
                child: Image.asset(AppAssets.onBoardingProfile),
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.40,
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Buy Groceries\nEasilly With Us",
                  style: TextStyle(
                      fontWeight: FontWeight.w900, fontSize: 40, height: 1.3),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Listen podcast and open your\nworld with this application",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: gradientColor,
                    ),
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 25,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ClipPathOnBoard extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 70, size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
