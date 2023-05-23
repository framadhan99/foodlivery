import 'package:flutter/material.dart';
import 'package:foodlivery/config/config.dart';

class TextFieldGeneral extends StatelessWidget {
  const TextFieldGeneral({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          isDense: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: AssetColors.greenLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AssetColors.greenDark,
            ),
          )),
    );
  }
}
