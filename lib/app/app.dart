import 'package:flutter/material.dart';
import 'package:foodlivery/app/app_theme.dart';
import 'package:foodlivery/config/navigation_service.dart';
import 'package:foodlivery/ui_features/pages/cart/payment_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      navigatorKey: navigatorKey,
      home: const PaymentPage(),
    );
  }
}
