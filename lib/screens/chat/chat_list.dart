import 'package:chat/screens/chat/chat_list_item.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({
    required Key key,
  }) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) => const ChatListItem();
}
