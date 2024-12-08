import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/chat/providers/chat_provider.dart';

import 'package:yes_no_app/chat/widgets/chat_header.dart';
import 'package:yes_no_app/chat/widgets/chat_view.dart';
import 'package:yes_no_app/public/widgets/message_field_box.dart';

/// ChatScreen is a StatelessWidget that displays the chat screen.
///
/// This screen contains the following widgets:
///
/// Gonzalo Quedena
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            /// ChatHeader is a custom widget that displays the chat header.
            const ChatHeader(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                /// ChatView is a custom widget that displays the chat messages.
                child: const ChatView(),
              ),
            ),

            /// MessageFieldBox is a custom widget that allows the user to type a message.
            MessageFieldBox(
              onValue: (value) => chatProvider.sendMessageAsync(value),
            ),
          ],
        ),
      ),
    );
  }
}
