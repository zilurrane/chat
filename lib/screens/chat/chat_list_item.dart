import 'package:flutter/material.dart';
import '../../models/conversation.dart';

class ChatListItem extends StatelessWidget {
  final Conversation conversation;
  const ChatListItem({super.key, required this.conversation});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        child: Card(
          color: Colors.white,
          elevation: 1,
          child: Container(
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.network(
                        conversation.profilePicture,
                        fit: BoxFit.fill,
                        width: 50,
                      )),
                  Text(conversation.title)
                ],
              )),
        ));
  }
}
