import 'package:flutter/material.dart';
import '../../widgets/app-bars/chat_window_app_bar.dart';

class ChatWindowScreen extends StatefulWidget {
  const ChatWindowScreen({Key? key}) : super(key: key);

  @override
  State<ChatWindowScreen> createState() => _ChatWindowScreen();
}

class _ChatWindowScreen extends State<ChatWindowScreen> {
  @override
  Widget build(BuildContext context) {
    final conversationId = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: ChatWindowAppBar(
        "Shinchan",
        key: const Key("appBar"),
      ),
      body: const Center(child: Text("Chat Window")),
    );
  }
}
