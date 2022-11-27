import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case '/home':
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    default:
      return MaterialPageRoute(builder: (_) => const HomeScreen());
  }
}
