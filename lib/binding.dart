import 'package:get/get.dart';

import 'controller.dart';
class Binding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut<Controller>(() => Controller());
  }
}