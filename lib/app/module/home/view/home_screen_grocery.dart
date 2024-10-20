import 'package:flutter/material.dart';
import 'package:grocery_app/app/utils/color_utils.dart';

class HomeScreenGrocery extends StatefulWidget {
  const HomeScreenGrocery({super.key});

  @override
  State<HomeScreenGrocery> createState() => _HomeScreenGroceryState();
}

class _HomeScreenGroceryState extends State<HomeScreenGrocery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [headerPart()],
        ),
      ),
    );
  }

  Padding headerPart() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          RichText(
            text: const TextSpan(children: [
              TextSpan(
                text: "Welcome\n",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
              TextSpan(
                text: "Shahin Sarker",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  letterSpacing: 1.5,
                ),
              ),
            ]),
          ),
          const Spacer(),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.amber,
              image: const DecorationImage(image: NetworkImage("")),
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ],
      ),
    );
  }
}
