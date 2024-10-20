import 'package:get/get.dart';
import 'package:grocery_app/app/module/grocery/binding/grocery_binding.dart';
import 'package:grocery_app/app/module/grocery/view/grocery_on_board.dart';

import '../widget/bottom_nav_bar.dart';

class AppsRoutes{
  static final String initialRoutes = '/home';

  static final routes = [
    GetPage(name: '/home', page: () => const GroceryOnBoard(), binding: GroceryBinding()),
    GetPage(name: '/bottomNavBar', page: () => const BottomNavBar(), binding: GroceryBinding()),
  ];
}