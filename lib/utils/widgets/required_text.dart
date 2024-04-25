import 'package:admin_panel/config/themes/resource/color.dart';
import 'package:flutter/material.dart';

class RequiredText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  const RequiredText({
    super.key,
    required this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: text,
        style: textStyle ??
            Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: 14,
                  color: AppColor.blackColor,
                ),
        children: [
          TextSpan(
            text: ' *',
            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                  fontSize: 14,
                  color: AppColor.redColor,
                ),
          )
        ],
      ),
    );
  }
}
