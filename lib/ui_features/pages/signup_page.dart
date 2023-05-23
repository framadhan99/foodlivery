import 'package:flutter/material.dart';
import 'package:foodlivery/config/config.dart';
import 'package:foodlivery/ui_features/pages/login_page.dart';
import 'package:foodlivery/ui_features/widgets/button_primary.dart';
import 'package:foodlivery/ui_features/widgets/textfield_general.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
            verticalSpace(150),
            Text(
              'Sign up',
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
            verticalSpace(9),
            Text(
              'Confirm password',
              style: AssetStyles.smallTitle.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AssetColors.greenDark,
              ),
            ),
            verticalSpace(6),
            const TextFieldGeneral(),
            verticalSpace(50),
            const Align(
              alignment: Alignment.center,
              child: ButtonPrimary(
                label: 'Create account',
                width: 162,
              ),
            ),
            verticalSpace(36),
            SizedBox(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Divider(),
                  Container(
                    width: 17,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Text(
                      'or',
                      style: AssetStyles.smallDescription.copyWith(
                        color: const Color(0xffE0E0E0),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            verticalSpace(12),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Continue with',
                style: AssetStyles.mediumTitle.copyWith(
                  fontSize: 14,
                  color: AssetColors.orangePastel,
                ),
              ),
            ),
            verticalSpace(22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                logos.length,
                (index) => Image.asset(logos[index]),
              ),
            ),
            verticalSpace(100),
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
                  onTap: () => nextScreen(const LoginPage()),
                  child: Text(
                    'Log in',
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
