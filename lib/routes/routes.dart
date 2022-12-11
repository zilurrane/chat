import 'package:flutter/material.dart';
import '../screens/chat/chat_window_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/chat/chat_screen.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case '/chat':
      return MaterialPageRoute(builder: (_) => const ChatScreen());
    case '/chat-window':
      return MaterialPageRoute(builder: (_) => const ChatWindowScreen());
    case '/home':
      return MaterialPageRoute(builder: (_) => const HomeScreen());
    default:
      return MaterialPageRoute(builder: (_) => const ChatScreen());
  }
}
