import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:get/get.dart';

class ShowSnackabr {
  void regulerSnackbar({
    required String title,
    required String desc,
  }) {
    Get.snackbar(
      title,
      desc,
      snackPosition: SnackPosition.TOP,
    );
  }

  void erorSnackbar({
    String? desc,
  }) {
    Get.snackbar(
      'Eror',
      desc ?? 'Something went wrong',
      backgroundColor: AppColor.redColor,
      snackPosition: SnackPosition.TOP,
    );
  }

  void successSnackbar({
    String? desc,
  }) {
    Get.snackbar(
      'Eror',
      desc ?? 'Horee, Success',
      backgroundColor: AppColor.greenColor,
      snackPosition: SnackPosition.TOP,
    );
  }
}
