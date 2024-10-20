import 'package:flutter/material.dart';
import 'package:grocery_app/app/utils/color_utils.dart';

import '../../../data/model/products.dart';
import '../../../widget/product_item_display.dart';

class HomeScreenGrocery extends StatefulWidget {
  const HomeScreenGrocery({super.key});

  @override
  State<HomeScreenGrocery> createState() => _HomeScreenGroceryState();
}

class _HomeScreenGroceryState extends State<HomeScreenGrocery> {
  String categories = "ALL";
  List<Grocery> grocery = groceryItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerPart(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 65,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: Center(
                        child: TextField(
                          onChanged: (value) {
                            setState(() {
                              grocery = groceryItems
                                  .where((element) => element.name
                                  .toLowerCase()
                                  .contains(value.toLowerCase()))
                                  .toList();
                            });
                          },
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 25,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Search Grocery",
                            hintStyle:
                                TextStyle(fontSize: 18, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.green[50],
                    ),
                    child: const Icon(
                      Icons.tune_rounded,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  groceryCategories.length,
                  (index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        categories = groceryCategories[index];
                        categories == "ALL"
                            ? grocery = groceryItems
                            : grocery = groceryItems
                                .where((element) =>
                                    element.category.toLowerCase() ==
                                    categories.toLowerCase())
                                .toList();
                      });
                    },
                    child: SizedBox(
                      height: 50,
                      child: Column(
                        children: [
                          Text(
                            groceryCategories[index],
                            style: TextStyle(
                                fontSize: categories == groceryCategories[index]
                                    ? 18
                                    : 16,
                                color: categories == groceryCategories[index]
                                    ? textGreen
                                    : Colors.black26,
                                fontWeight:
                                    categories == groceryCategories[index]
                                        ? FontWeight.w900
                                        : FontWeight.w500),
                          ),
                          categories == groceryCategories[index]
                              ? const CircleAvatar(
                                  radius: 4,
                                  backgroundColor: textGreen,
                                )
                              : const SizedBox()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: List.generate(
                    grocery.length,
                    (index) => GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ProductItemDisplay(grocery: grocery[index]),
                      ),
                      onTap: () {},
                    ),
                  ),
                ),
              ),
            ),
          ],
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
                  height: 1,
                  letterSpacing: -0.5,
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
