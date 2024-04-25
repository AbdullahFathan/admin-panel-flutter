import 'package:admin_panel/layout/local_navigator/local_navigator_controller.dart';
import 'package:get/get.dart';

class SiteLayoutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavigationController>(() => NavigationController());
  }
}
