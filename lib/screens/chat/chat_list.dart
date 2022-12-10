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
  List<String> items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) => ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemExtent: 55,
        itemBuilder: (context, index) {
          return ChatListItem(text: items[index]);
        },
      );
}
