import 'package:flutter/material.dart';
import '../../widgets/app-bars/custom_app_bar.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        "Chat",
        key: const Key("appBar"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(30),
        child: Text("Chat"),
      ),
    );
  }
}
