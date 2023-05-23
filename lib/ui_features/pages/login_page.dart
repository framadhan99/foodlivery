import 'package:flutter/material.dart';
import 'package:foodlivery/config/config.dart';
import 'package:foodlivery/ui_features/pages/signup_page.dart';
import 'package:foodlivery/ui_features/widgets/button_primary.dart';
import 'package:foodlivery/ui_features/widgets/textfield_general.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> logos = [
      AssetPaths.logoApple,
      AssetPaths.logoFacebook,
      AssetPaths.logoGoogle,
      AssetPaths.logoTwitter,
    ];
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(300),
            Text(
              'Log in',
              style: AssetStyles.mediumTitle.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 28,
                color: AssetColors.greenDark,
              ),
            ),
            verticalSpace(30),
            Text(
              'Username',
              style: AssetStyles.smallTitle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AssetColors.greenDark,
              ),
            ),
            verticalSpace(6),
            const TextFieldGeneral(),
            verticalSpace(9),
            Text(
              'Password',
              style: AssetStyles.smallTitle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AssetColors.greenDark,
              ),
            ),
            verticalSpace(6),
            const TextFieldGeneral(),
            verticalSpace(5),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: AssetStyles.smallDescription
                    .copyWith(color: AssetColors.orangePastel),
              ),
            ),
            verticalSpace(50),
            const Align(
              alignment: Alignment.center,
              child: ButtonPrimary(
                label: 'Log in',
                width: 114,
              ),
            ),
            verticalSpace(63),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                logos.length,
                (index) => Image.asset(logos[index]),
              ),
            ),
            verticalSpace(125),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Have an account ?',
                  style: AssetStyles.smallTitle.copyWith(
                    color: AssetColors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                horizontalSpace(10),
                GestureDetector(
                  onTap: () => nextScreen(const SignupPage()),
                  child: Text(
                    'Sign up',
                    style: AssetStyles.smallTitle.copyWith(
                      color: AssetColors.orangePastel,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
