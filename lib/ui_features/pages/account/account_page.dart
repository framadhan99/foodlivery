import 'package:flutter/material.dart';
import 'package:foodlivery/config/asset_colors.dart';
import 'package:foodlivery/config/asset_paths.dart';
import 'package:foodlivery/config/asset_styles.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/widgets/appbar/appbar_primary.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> accounts = [
      {
        'icon': const Icon(
          Icons.email,
          color: AssetColors.orangePastel,
        ),
        'title': 'Jackhalbert@food.com',
      },
      {
        'icon': const Icon(
          Icons.phone,
          color: AssetColors.greenDark,
        ),
        'title': '+00 83202394354'
      },
      {
        'icon': const Icon(
          Icons.location_on,
          color: Color(0xffFF7E73),
        ),
        'title': 'Columbus Avenue San Francisco'
      },
    ];
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          top: 60,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            const AppbarPrimary(
              title: 'Account',
              icon: Icons.settings,
            ),
            verticalSpace(40),
            CircleAvatar(
              radius: 40,
              child: Image.asset(AssetPaths.imgProfile),
            ),
            verticalSpace(20),
            const Text('Jack Halbert'),
            verticalSpace(20),
            const Divider(
              color: AssetColors.greyDark,
            ),
            verticalSpace(20),
            ...List.generate(
              accounts.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    accounts[index]['icon'],
                    horizontalSpace(10),
                    Text(
                      accounts[index]['title'],
                      style: AssetStyles.smallTitle.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
            ),
            verticalSpace(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.logout,
                  color: AssetColors.greyDark,
                ),
                horizontalSpace(10),
                Text(
                  'Log out',
                  style: AssetStyles.smallTitle
                      .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
