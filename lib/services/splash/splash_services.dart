import 'package:flutter/material.dart';
import 'package:it_way_bd_task/config/routes/routes_name.dart';

class SplashServices {
void navigateToNextScreen(BuildContext context) {
  // Simulate a delay for splash screen
  Future.delayed(Duration(seconds: 3), () {
    // Navigate to the home screen after the delay
    // ignore: use_build_context_synchronously
    Navigator.pushNamedAndRemoveUntil(context, RoutesName.homeScreen, (route) => false);
  });
}
}