import 'package:flutter/material.dart';
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
    );
  }
}
