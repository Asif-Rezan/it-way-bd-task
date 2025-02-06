import 'package:flutter/material.dart';
import 'package:it_way_bd_task/config/components/loading_widget.dart';
import '../../config/routes/routes_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.homeScreen);
                  },
                  child: Text('Home')),
            ],
          ),
        ),
      ),
    );
  }
}
