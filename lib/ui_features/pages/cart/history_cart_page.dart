import 'package:flutter/material.dart';
import 'package:foodlivery/config/asset_colors.dart';
import 'package:foodlivery/config/asset_paths.dart';
import 'package:foodlivery/config/asset_styles.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/widgets/appbar/appbar_primary.dart';

class HistoryCartPage extends StatelessWidget {
  const HistoryCartPage({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppbarPrimary(
              title: 'Your Cart History',
              action: false,
            ),
            verticalSpace(40),
            Text(
              '01/02/2023 01:21 PM',
              style: AssetStyles.smallDescription.copyWith(
                color: AssetColors.greenDark,
                fontSize: 16,
              ),
            ),
            verticalSpace(4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                        AssetPaths.imgBurger2,
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Total',
                      style: AssetStyles.smallDescription,
                    ),
                    Text(
                      '1 Items',
                      style:
                          AssetStyles.smallDescription.copyWith(fontSize: 13),
                    ),
                    Container(
                      height: 14,
                      width: 53,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AssetColors.greenLight,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'one more',
                        style: AssetStyles.smallDescription
                            .copyWith(color: AssetColors.orangePastel),
                      ),
                    )
                  ],
                )
              ],
            ),
            verticalSpace(30),
            Text(
              '01/02/2023 01:21 PM',
              style: AssetStyles.smallDescription.copyWith(
                color: AssetColors.greenDark,
                fontSize: 16,
              ),
            ),
            verticalSpace(4),
            Row(
              children: [
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                        AssetPaths.imgBurger2,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(5),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                        AssetPaths.imgPancake,
                      ),
                    ),
                  ),
                ),
                horizontalSpace(5),
                Container(
                  height: 65,
                  width: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage(
                        AssetPaths.imgKuah,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Total',
                      style: AssetStyles.smallDescription,
                    ),
                    Text(
                      '3 Items',
                      style:
                          AssetStyles.smallDescription.copyWith(fontSize: 13),
                    ),
                    Container(
                      height: 14,
                      width: 53,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AssetColors.greenLight,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        'one more',
                        style: AssetStyles.smallDescription
                            .copyWith(color: AssetColors.orangePastel),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
