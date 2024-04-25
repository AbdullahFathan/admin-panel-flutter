import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:admin_panel/layout/web_layout.dart';
import 'package:admin_panel/utils/widgets/primary_button.dart';
import 'package:admin_panel/utils/widgets/required_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_controller.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class LoginPage extends GetView<LoginController> {
  static String route = "/login";
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bgColor,
      body: Center(
        child: Container(
          width: 556,
          height: 456,
          constraints: const BoxConstraints(
            maxWidth: 556,
            minWidth: 356,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 18),
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: AppColor.whiteColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: FormBuilder(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Selamat Datang",
                    style: Get.textTheme.displayMedium!.copyWith(
                      fontSize: 22,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RequiredText(text: "Email")),
                FormBuilderTextField(
                  name: "Email",
                  decoration: const InputDecoration(
                    hintText: "Put your email",
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: RequiredText(text: "Password")),
                FormBuilderTextField(
                  name: "Password",
                  decoration: const InputDecoration(
                    hintText: "Put your password",
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot password ??",
                    style: Get.textTheme.bodyMedium!.copyWith(
                      fontSize: 12,
                      color: AppColor.greenColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: PrimaryButton(
                    text: "Login",
                    onPressed: () => Get.offNamed(SiteLayout.route),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
