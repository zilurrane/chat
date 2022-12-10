import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  final String text;
  const ChatListItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        child: Card(
          color: Colors.white,
          elevation: 1,
          child: Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              child: Text(text)),
        ));
  }
}
