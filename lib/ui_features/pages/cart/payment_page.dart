import 'package:flutter/material.dart';
import 'package:foodlivery/config/asset_colors.dart';
import 'package:foodlivery/config/asset_paths.dart';
import 'package:foodlivery/config/asset_styles.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:foodlivery/ui_features/widgets/button/button_primary.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              title: 'Payment',
              action: false,
            ),
            verticalSpace(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' Card',
                  style: AssetStyles.mediumTitle.copyWith(fontSize: 16),
                ),
                Text(
                  'Change',
                  style: AssetStyles.mediumTitle
                      .copyWith(fontSize: 16, color: AssetColors.greenDark),
                ),
              ],
            ),
            verticalSpace(8),
            Container(
              height: 44,
              width: screenWidth(context),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2307',
                    style: AssetStyles.mediumTitle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: AssetColors.greenDark,
                        width: 6,
                      ),
                    ),
                  )
                ],
              ),
            ),
            verticalSpace(20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  ' Address',
                  style: AssetStyles.mediumTitle.copyWith(fontSize: 16),
                ),
                Text(
                  'Change',
                  style: AssetStyles.mediumTitle
                      .copyWith(fontSize: 16, color: AssetColors.greenDark),
                ),
              ],
            ),
            verticalSpace(8),
            Container(
              height: 80,
              width: screenWidth(context),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Columbus Avenue San Francisco',
                style: AssetStyles.mediumTitle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            verticalSpace(20),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                ' Note',
                style: AssetStyles.mediumTitle.copyWith(fontSize: 16),
              ),
            ),
            verticalSpace(8),
            Container(
              height: 80,
              width: screenWidth(context),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xffE0E0E0),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.centerLeft,
              child: Text(
                'write your note',
                style: AssetStyles.mediumTitle.copyWith(
                  fontSize: 16,
                  color: AssetColors.grey,
                ),
              ),
            ),
            verticalSpace(26),
            Text(
              'Your Order :',
              style: AssetStyles.mediumTitle.copyWith(
                  fontSize: 18,
                  color: AssetColors.orangePastel,
                  fontWeight: FontWeight.w700),
            ),
            verticalSpace(16),
            ...List.generate(
              3,
              (index) => Padding(
                padding: EdgeInsets.only(
                  left: screenWidth(context) * 0.35,
                  bottom: 20,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                          image: AssetImage(
                            AssetPaths.imgBurger,
                          ),
                        ),
                      ),
                    ),
                    horizontalSpace(8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Food Name',
                          style: AssetStyles.smallTitle.copyWith(fontSize: 10),
                        ),
                        Text(
                          '1 x \$ 10',
                          style: AssetStyles.smallTitle.copyWith(
                            fontSize: 8,
                            color: AssetColors.greenDark,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      '\$10',
                      style: AssetStyles.smallTitle.copyWith(fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth(context) * 0.35),
              child: const Divider(
                color: AssetColors.greyDark,
                thickness: 1,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Total :',
                  style: AssetStyles.smallTitle.copyWith(fontSize: 12),
                ),
                horizontalSpace(20),
                Text(
                  '\$40',
                  style: AssetStyles.smallTitle.copyWith(
                    fontSize: 12,
                    color: AssetColors.orangePastel,
                  ),
                ),
              ],
            ),
            verticalSpace(50),
            const ButtonPrimary(
              label: 'Buy',
              height: 40,
              width: 308,
            )
          ],
        ),
      ),
    );
  }
}
