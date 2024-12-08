import 'package:flutter/material.dart';

/// Chat Header
/// 
/// This widget is used to display the chat header.
/// 
/// Gonzalo Quedena
class ChatHeader extends StatelessWidget {
  const ChatHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      color: colors.primary,
      height: 110,
      child: Container(
        margin: const EdgeInsets.only(
          top: 10,
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://shorturl.at/zfCWH",
                ),
              ),
            ),
            const Text(
              "My Love ❤️‍🔥",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
