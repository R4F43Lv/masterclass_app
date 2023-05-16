import 'package:app_masterclass/app/home/screen/home_screen.dart';
import 'package:app_masterclass/app/splash/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class RouterMasterClass {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/homescreen':
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    });
  }
}
