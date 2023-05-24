import 'package:flutter/material.dart';
import 'package:foodlivery/config/asset_colors.dart';
import 'package:foodlivery/config/asset_paths.dart';
import 'package:foodlivery/config/asset_styles.dart';
import 'package:foodlivery/config/navigation_service.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/pages/login_page.dart';
import 'package:foodlivery/ui_features/widgets/button/button_primary.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: screenHeight(context),
        width: screenWidth(context),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetPaths.imgIntro),
          ),
        ),
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: screenWidth(context) * 0.15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Fresh Food',
                style: AssetStyles.bigTitle.copyWith(height: 0.2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'With',
                    style: AssetStyles.inriaSerifText,
                  ),
                  horizontalSpace(10),
                  Text(
                    'Great Taste',
                    style: AssetStyles.bigTitle.copyWith(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              verticalSpace(50),
              ButtonPrimary(
                onTap: () => nextScreen(const LoginPage()),
                radius: 10,
                height: 40,
                label: 'Login',
                labelStyle: AssetStyles.labelButton.copyWith(
                  fontSize: 20,
                  height: 1,
                ),
              ),
              verticalSpace(30),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: screenWidth(context),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AssetColors.orangePastel, width: 2)),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: AssetStyles.labelButton.copyWith(
                        fontSize: 20,
                        height: 1,
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpace(100)
            ],
          ),
        ),
      ),
    );
  }
}
