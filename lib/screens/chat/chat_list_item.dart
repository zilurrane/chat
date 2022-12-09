import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: Colors.white,
              elevation: 1,
              child: Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  child: const Text("---")),
            )
          ],
        ));
  }
}
