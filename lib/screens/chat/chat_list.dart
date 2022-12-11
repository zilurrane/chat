import 'package:chat/bloc/conversation_event.dart';
import 'package:chat/bloc/conversation_state.dart';
import 'package:chat/models/conversation.dart';
import 'package:chat/screens/chat/chat_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/counter_bloc.dart';

class ChatList extends StatefulWidget {
  const ChatList({
    required Key key,
  }) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  final ConversationBloc _conversationBloc = ConversationBloc();

  @override
  void initState() {
    super.initState();
    _conversationBloc.add(GetConversationList());
  }

  @override
  void dispose() {
    _conversationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => _conversationBloc,
        child: BlocListener<ConversationBloc, ConversationState>(
          listener: (context, state) {
            if (state is ConversationError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                ),
              );
            }
          },
          child: BlocBuilder<ConversationBloc, ConversationState>(
            builder: (context, state) {
              if (state is ConversationInitial) {
                return _buildLoading();
              } else if (state is ConversationLoading) {
                return _buildLoading();
              } else if (state is ConversationLoaded) {
                return _buildConversationList(context, state.conversations);
              } else if (state is ConversationError) {
                return Container();
              } else {
                return Container();
              }
            },
          ),
        ));
  }

  Widget _buildConversationList(
      BuildContext context, List<Conversation> conversations) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: conversations.length,
          itemExtent: 70,
          itemBuilder: (context, index) {
            Conversation conversation = conversations[index];
            return ChatListItem(
              conversation: conversation,
            );
          },
        ));
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());
}
