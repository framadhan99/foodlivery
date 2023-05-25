import 'package:flutter/material.dart';
import 'package:foodlivery/config/asset_colors.dart';
import 'package:foodlivery/config/asset_paths.dart';
import 'package:foodlivery/config/asset_styles.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/widgets/appbar/appbar_primary.dart';

class DetailFoodPage extends StatelessWidget {
  const DetailFoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: screenHeight(context) * 0.06,
            right: 20,
            left: 20,
          ),
          height: 444,
          width: screenWidth(context),
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                AssetPaths.imgDetailFood,
              ),
            ),
          ),
          alignment: Alignment.topCenter,
          child: const AppbarPrimary(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 450,
            width: screenWidth(context),
            padding: const EdgeInsets.only(right: 30, left: 30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              children: [
                verticalSpace(10),
                Container(
                  height: 3,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xffE0E0E0),
                  ),
                ),
                verticalSpace(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Food Name'),
                    Icon(
                      Icons.favorite_outline,
                      color: AssetColors.orangePastel,
                    )
                  ],
                ),
                verticalSpace(10),
                const Text(
                  'Lorem ipsum dolor sit amet consectetur. Vel non vitae orci ipsum sit tristique. Sit risus in faucibus massa. Tincidunt dignissim at auctor lectus consectetur a. Gravida quis commodo quisque viverra imperdiet sed. Aliquet massa purus mattis morbi cursus proin leo morbi. Augue in tristique curabitur faucibus et velit amet. Enim lacus vitae gravida purus viverra sit. Venenatis orci dolor nulla in in. Quis etiam ornare mauris vel elementum ultrices non. Morbi convallis aliqu ....',
                  style: AssetStyles.smallDescription,
                ),
                verticalSpace(10),
                Row(
                  children: [
                    Text(
                      'Read More',
                      style: AssetStyles.smallDescription.copyWith(
                        color: AssetColors.greenDark,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 18,
                      color: AssetColors.greenDark,
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  height: 40,
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: AssetColors.greenDark,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'add to cart',
                        style: AssetStyles.smallDescription.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '\$20',
                        style: AssetStyles.smallDescription.copyWith(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                verticalSpace(screenHeight(context) * 0.05)
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
