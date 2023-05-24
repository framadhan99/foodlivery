import 'package:flutter/material.dart';
import 'package:foodlivery/config/config.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/widgets/button/button_primary.dart';

class CardFood extends StatelessWidget {
  const CardFood({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 82,
          width: 79,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
        ),
        horizontalSpace(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Food Name',
              style: AssetStyles.smallTitle,
            ),
            verticalSpace(5),
            SizedBox(
              width: screenWidth(context) * 0.6,
              child: Text(
                'Lorem ipsum dolor sit amet consectetur. Sit mi egestas tortor bibendum elit ullamcorper justo euismod. ',
                style: AssetStyles.smallDescription
                    .copyWith(fontWeight: FontWeight.w500, fontSize: 8),
              ),
            ),
            verticalSpace(5),
            Row(
              children: [
                const Icon(
                  Icons.favorite_outline,
                  size: 16,
                  color: AssetColors.orangePastel,
                ),
                Text(
                  '\$10',
                  style: AssetStyles.smallDescription.copyWith(
                    color: AssetColors.greenDark,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                horizontalSpace(screenWidth(context) * 0.4),
                ButtonPrimary(
                  label: '+',
                  labelStyle: AssetStyles.smallDescription.copyWith(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  height: 20,
                  width: 25,
                  radius: 5,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
