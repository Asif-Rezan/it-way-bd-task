import 'package:flutter/material.dart';
import 'package:it_way_bd_task/config/routes/routes.dart';
import 'package:it_way_bd_task/config/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
