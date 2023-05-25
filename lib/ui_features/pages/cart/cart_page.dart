import 'package:flutter/material.dart';
import 'package:foodlivery/config/config.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:foodlivery/ui_features/widgets/card/card_food_cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

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
              title: 'Cart',
              icon: Icons.history,
            ),
            verticalSpace(40),
            ...List.generate(
                3,
                (index) => const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: CardFoodCart(),
                    )),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 40,
        margin: EdgeInsets.only(
          right: 40,
          left: 40,
          bottom: 40,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 50),
        decoration: BoxDecoration(
          color: AssetColors.greenDark,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total : \$20',
              style: AssetStyles.smallDescription.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              '|      Pay',
              style: AssetStyles.smallDescription.copyWith(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
