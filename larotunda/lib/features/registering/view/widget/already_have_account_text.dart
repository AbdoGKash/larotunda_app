import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:larotunda/core/routing/routers_name.dart';
import 'package:larotunda/core/theming/colors_manger.dart';
import 'package:larotunda/core/theming/text_style_manager.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: "Already have an account? ",
                style: TextStyles.font13GreykW300),
            TextSpan(
                text: "Login",
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, RoutersName.login);
                  },
                style: TextStyles.font13BlackBold
                    .copyWith(color: ColorsManger.primary)),
          ])),
    );
  }
}
