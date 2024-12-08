import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:yes_no_app/chat/entities/message.dart';
import 'package:yes_no_app/chat/providers/chat_provider.dart';
import 'package:yes_no_app/chat/widgets/her_message_bubble.dart';
import 'package:yes_no_app/chat/widgets/my_message_bubble.dart';

/// Chat View
///
/// This is the main chat view that will be used to display the chat messages.
///
/// Gonzalo Quedena
class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return ListView.builder(
      controller: chatProvider.chatScrollController,
      itemCount: chatProvider.messages.length,
      itemBuilder: (context, index) {
        final message = chatProvider.messages[index];

        return (message.fromWho == FromWho.hers)
            ? HerMessageBubble(
                message: message,
              )
            : MyMessageBubble(
                message: message,
              );
      },
    );
  }
}
