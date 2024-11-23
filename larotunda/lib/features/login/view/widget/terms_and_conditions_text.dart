import 'package:flutter/material.dart';
import 'package:larotunda/core/theming/text_style_manager.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: "By logging, you agree to our ",
              style: TextStyles.font13GreykW300),
          TextSpan(
              text: ' Terms & Conditions                  ',
              style: TextStyles.font13BlackBold),
          TextSpan(
              text: "and ",
              style: TextStyles.font13GreykW300.copyWith(height: 1.5)),
          TextSpan(text: ' Privacy Policy', style: TextStyles.font13BlackBold),
        ]));
  }
}
