import 'package:flutter/material.dart';
import '../screens/home/home_screen.dart';
import '../screens/chat/chat_screen.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case '/chat':
      return MaterialPageRoute(builder: (_) => const ChatScreen());
    case '/home':
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    default:
      return MaterialPageRoute(builder: (_) => const ChatScreen());
  }
}
