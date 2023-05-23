import 'package:flutter/material.dart';
import 'package:foodlivery/config/config.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    super.key,
    required this.label,
    this.labelStyle,
    this.height,
    this.width,
    this.onTap,
  });

  final String label;
  final TextStyle? labelStyle;
  final double? height;
  final double? width;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 33,
        width: width ?? screenWidth(context),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AssetColors.greenDark,
        ),
        child: Center(
          child: Text(
            label,
            style: labelStyle ??
                AssetStyles.labelButton.copyWith(
                  height: 1,
                ),
          ),
        ),
      ),
    );
  }
}
