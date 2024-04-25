import 'package:admin_panel/features/sidebar/sidebar_controller.dart';
import 'package:get/get.dart';

class SideBarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SideBarController>(() => SideBarController());
  }
}
