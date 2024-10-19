import 'package:get/get.dart';
import 'package:grocery_app/app/module/grocery/controller/grocery_controller.dart';

class GroceryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroceryController());
  }
}
