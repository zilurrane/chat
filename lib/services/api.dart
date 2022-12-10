import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/conversation.dart';

Future<List<Conversation>> getConversations() async {
  Uri url = Uri.https(
      'my-json-server.typicode.com', 'zilurrane/chat-api/conversations');
  final response = await http.get(url);
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => Conversation.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}
