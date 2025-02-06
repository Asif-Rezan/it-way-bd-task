import 'package:flutter/material.dart';
import 'package:it_way_bd_task/services/splash/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashServices _splashServices = SplashServices();

  @override
  void initState() {
    super.initState();
    _splashServices.navigateToNextScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue.withAlpha(25),
            ),
            child: const Icon(
              Icons.fact_check,
              size: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
