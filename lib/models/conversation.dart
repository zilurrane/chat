class Conversation {
  final int id;
  final String title;
  final String profilePicture;

  Conversation(
      {required this.id, required this.title, required this.profilePicture});

  factory Conversation.fromJson(Map<String, dynamic> json) {
    return Conversation(
      id: json['id'],
      title: json['title'],
      profilePicture: json['profilePicture'],
    );
  }
}
