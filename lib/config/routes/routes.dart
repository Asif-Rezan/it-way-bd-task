import 'package:flutter/material.dart';
import '../../views/view.dart';


class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'home_screen':
        return MaterialPageRoute(builder: (context) => Home());
      case 'splash_screen':
        return MaterialPageRoute(builder: (context) => SplashScreen());

      default:
        return MaterialPageRoute(builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}