import 'package:flutter/material.dart';
import 'package:yes_no_app/chat/entities/message.dart';
import 'package:yes_no_app/chat/services/yes_no_service.dart';

/// Chat provider
/// 
/// This provider is responsible for managing the chat messages and the chat scroll controller.
/// 
/// Gonzalo Quedena
class ChatProvider extends ChangeNotifier {
  final chatScrollController = ScrollController();
  final yesNoService = YesNoService();

  List<Message> messages = [
    const Message(text: "Hi!", fromWho: FromWho.me),
  ];

  /// Send a message
  /// 
  /// This method sends a message to the chat and waits for the response.
  Future<void> sendMessageAsync(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(
      text: text,
      fromWho: FromWho.me,
    );

    messages.add(newMessage);

    if (text.endsWith("?")) {
      await herReplyAsync();
    }

    notifyListeners();
    moveScrollToBottomAsync();
  }

  /// Her reply
  /// 
  /// This method waits for her reply and adds it to the chat.
  Future<void> herReplyAsync() async {
    final herMessage = await yesNoService.getAnswerAsync();

    messages.add(herMessage);
    notifyListeners();

    moveScrollToBottomAsync();
  }

  /// Move scroll to bottom
  /// 
  /// This method moves the chat scroll to the bottom.
  Future<void> moveScrollToBottomAsync() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
      chatScrollController.position.maxScrollExtent,
      duration: const Duration(
        milliseconds: 300,
      ),
      curve: Curves.easeOut,
    );
  }
}
