import 'package:flutter/material.dart';
import 'package:foodlivery/config/asset_paths.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/widgets/appbar/appbar_primary.dart';
import 'package:foodlivery/ui_features/widgets/card_food.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      AssetPaths.imgBurger2,
      AssetPaths.imgPancake,
      AssetPaths.imgKuah,
    ];
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 60,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            AppbarPrimary(
              title: 'Favourite foods',
            ),
            verticalSpace(44),
            ...List.generate(
              images.length,
              (index) => Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CardFood(
                  image: images[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
