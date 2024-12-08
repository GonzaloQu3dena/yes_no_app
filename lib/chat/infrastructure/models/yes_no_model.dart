import 'package:yes_no_app/chat/entities/message.dart';

/// Model class for YesNoModel
/// 
/// This class is used to convert the JSON data to a Dart object
/// 
/// Gonzalo Quedena
class YesNoModel {
  String answer;
  bool forced;
  String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  /// Yes or No model from JSON map. Returns a Yes or No model with the answer, forced and image
  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json['answer'],
        forced: json['forced'],
        image: json['image'],
      );

  /// To JSON map
  /// 
  /// JSON map from Yes or No model. Returns a map with the answer, forced and image
  Map<String, dynamic> toJson() => {
        'answer': answer,
        'forced': forced,
        'image': image,
      };

  /// To Message entity
  ///
  /// Message entity from Yes or No model. Returns a message with the answer and image
  Message toMessageEntity() => Message(
        text: answer == "yes" ? "Yes" : "No",
        fromWho: FromWho.hers,
        imageUrl: image,
      );
}
