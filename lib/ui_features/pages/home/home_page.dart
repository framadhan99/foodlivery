import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:foodlivery/config/config.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/widgets/card_food.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      AssetPaths.imgPancake,
      AssetPaths.imgKuah,
      AssetPaths.imgBurger2,
      AssetPaths.imgBurger,
      AssetPaths.imgPancake,
      AssetPaths.imgKuah,
      AssetPaths.imgBurger2,
      AssetPaths.imgBurger,
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hey, Fajar',
                          style: AssetStyles.mediumTitle.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: AssetColors.greenDark,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Cirebon',
                              style: AssetStyles.smallDescription.copyWith(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10,
                                  color: AssetColors.greenDark),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: AssetColors.greenDark,
                            )
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.shopping_cart,
                      color: AssetColors.orangePastel,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 192,
                child: PageView.builder(
                  controller: PageController(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 192,
                    width: 352,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AssetPaths.imgHeroHome),
                      ),
                    ),
                  ),
                ),
              ),
              verticalSpace(20),
              DotsIndicator(
                dotsCount: 7,
                position: 0,
                decorator: DotsDecorator(
                  color: AssetColors.greenLight,
                  size: const Size.square(9.0),
                  activeSize: const Size(14.0, 9.0),
                  activeColor: AssetColors.greenDark,
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              verticalSpace(48),
              Column(
                children: List.generate(
                  images.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      bottom: 15,
                    ),
                    child: CardFood(
                      image: images[index],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
