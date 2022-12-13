import 'package:flutter/material.dart';
import '../screens/chat/chat_window_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/chat/chat_screen.dart';

Route generatedRoutes(RouteSettings settings) {
  switch (settings.name) {
    default:
      return MaterialPageRoute(builder: (_) => const ChatScreen());
  }
}

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const ChatScreen(),
  '/chat': (context) => const ChatScreen(),
  '/chat-window': (context) => const ChatWindowScreen(),
  '/home': (context) => const HomeScreen()
};
