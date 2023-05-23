import 'package:flutter/material.dart';
import 'package:foodlivery/config/asset_colors.dart';

class AssetStyles {
  static const TextStyle bigTitle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w800,
    fontSize: 48,
    color: AssetColors.greenLight,
  );

  static const TextStyle mediumTitle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: AssetColors.greyDark,
  );

  static const TextStyle smallTitle = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: AssetColors.greyDark,
  );

  static const TextStyle bigDescription = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontSize: 11,
    color: AssetColors.grey,
  );
  static const TextStyle smallDescription = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    fontSize: 8,
    color: AssetColors.grey,
  );

  static const TextStyle labelButton = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: Colors.white,
  );
}
