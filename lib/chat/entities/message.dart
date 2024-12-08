enum FromWho { me, hers }

/// Message entity
///
/// Holds the message text, imageUrl and fromWho
///
/// Gonzalo Quedena
class Message {
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  const Message({
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });
}
