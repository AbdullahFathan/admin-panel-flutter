import 'package:admin_panel/features/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';

class DashBoardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
  }
}
