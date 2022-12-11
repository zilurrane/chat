import 'package:flutter/material.dart';
import '../../widgets/app-bars/custom_app_bar.dart';

class ChatWindowScreen extends StatefulWidget {
  const ChatWindowScreen({Key? key}) : super(key: key);

  @override
  State<ChatWindowScreen> createState() => _ChatWindowScreen();
}

class _ChatWindowScreen extends State<ChatWindowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        "Shinchan",
        key: const Key("appBar"),
      ),
      body: const Center(child: Text("Chat Window")),
    );
  }
}
