import 'package:bloc/bloc.dart';
import 'package:chat/services/api.dart';

import 'conversation_event.dart';
import 'conversation_state.dart';

class ConversationBloc extends Bloc<ConversationEvent, ConversationState> {
  ConversationBloc() : super(ConversationInitial()) {
    on<GetConversationList>((event, emit) async {
      try {
        emit(ConversationLoading());
        final data = await getConversations();
        emit(ConversationLoaded(data));
      } catch (ex) {
        emit(const ConversationError(
            "Failed to fetch data. is your device online?"));
      }
    });
  }
}
