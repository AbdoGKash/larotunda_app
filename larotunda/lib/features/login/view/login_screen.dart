import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:larotunda/core/theming/text_style_manager.dart';
import 'package:larotunda/core/widgets/app_text_button.dart';
import 'package:larotunda/features/login/view/widget/dont_have_account_text.dart';
import 'package:larotunda/features/login/view/widget/email_and_password.dart';
import 'package:larotunda/features/login/view/widget/terms_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyles.font24primaryBold,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                  style: TextStyles.font14GrayBold,
                ),
                const SizedBox(
                  height: 36,
                ),
                const EmailAndPassword(),
                const SizedBox(
                  height: 50,
                ),
                AppTextButton(
                  buttonText: "Log In",
                  textStyle: TextStyles.font16WhiteSemiBold,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 50,
                ),
                const TermsAndConditionsText(),
                const SizedBox(
                  height: 30,
                ),
                const DontHaveAccountText(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
