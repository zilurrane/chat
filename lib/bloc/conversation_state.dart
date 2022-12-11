import 'package:equatable/equatable.dart';

import '../models/conversation.dart';

abstract class ConversationState extends Equatable {
  const ConversationState();

  @override
  List<Object?> get props => [];
}

class ConversationInitial extends ConversationState {}

class ConversationLoading extends ConversationState {}

class ConversationLoaded extends ConversationState {
  final List<Conversation> conversations;
  const ConversationLoaded(this.conversations);
}

class ConversationError extends ConversationState {
  final String? message;
  const ConversationError(this.message);
}
