import 'package:chat/models/conversation.dart';
import 'package:chat/screens/chat/chat_list_item.dart';
import 'package:chat/services/api.dart';
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
  late Future<List<Conversation>> conversationsFuture;

  @override
  void initState() {
    super.initState();
    conversationsFuture = getConversations();
  }

  @override
  Widget build(BuildContext context) => FutureBuilder<List<Conversation>>(
        future: conversationsFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Conversation> data = snapshot.data ?? [];
            return ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemExtent: 55,
              itemBuilder: (context, index) {
                return ChatListItem(text: data[index].title);
              },
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(child: CircularProgressIndicator());
        },
      );
}
