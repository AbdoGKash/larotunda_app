import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:larotunda/core/theming/text_style_manager.dart';
import '../../../core/widgets/app_text_button.dart';
import 'widget/already_have_account_text.dart';
import 'widget/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Create Account",
              style: TextStyles.font32primaryBold,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
              style: TextStyles.font14GrayBold,
            ),
            const SizedBox(
              height: 40,
            ),
            const SignUpForm(),
            const SizedBox(
              height: 50,
            ),
            AppTextButton(
              buttonText: "Create Account",
              textStyle: TextStyles.font16WhiteSemiBold,
              onPressed: () {},
            ),
            const SizedBox(
              height: 40,
            ),
            const AlreadyHaveAccountText(),
          ]),
        ),
      ),
    ));
  }
}
