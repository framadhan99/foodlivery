import 'package:flutter/material.dart';
import 'package:foodlivery/config/config.dart';
import 'package:foodlivery/config/ui_helper.dart';
import 'package:foodlivery/ui_features/widgets/button/button_back.dart';

class AppbarPrimary extends StatelessWidget {
  const AppbarPrimary({
    super.key,
    this.icon,
    this.title,
    this.action,
  });

  final IconData? icon;
  final String? title;
  final bool? action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ButtonBack(
          onTap: backScreen,
        ),
        horizontalSpace(22),
        Text(
          title ?? "",
          style: AssetStyles.mediumTitle,
        ),
        const Spacer(),
        action ?? true
            ? Icon(
                icon ?? Icons.shopping_cart,
                color: AssetColors.orangePastel,
              )
            : const SizedBox(),
      ],
    );
  }
}
