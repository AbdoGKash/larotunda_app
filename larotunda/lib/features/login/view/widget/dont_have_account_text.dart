import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:larotunda/core/routing/routers_name.dart';
import 'package:larotunda/core/theming/colors_manger.dart';
import 'package:larotunda/core/theming/text_style_manager.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: "Do not have an account? ",
                style: TextStyles.font13GreykW300),
            TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, RoutersName.signUp);
                  },
                text: "Sign Up",
                style: TextStyles.font13BlackBold
                    .copyWith(color: ColorsManger.primary))
          ])),
    );
  }
}
