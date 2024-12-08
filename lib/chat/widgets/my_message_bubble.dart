import 'package:flutter/material.dart';
import 'package:yes_no_app/chat/entities/message.dart';

/// My message bubble
///
/// This is the widget that will be used to display the message sent by the user.
///
/// Gonzalo Quedena
class MyMessageBubble extends StatelessWidget {
  final Message message;

  const MyMessageBubble({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10,
            ),
            child: Text(
              message.text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
