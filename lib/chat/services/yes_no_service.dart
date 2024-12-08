import 'package:dio/dio.dart';
import 'package:yes_no_app/chat/entities/message.dart';
import 'package:yes_no_app/chat/infrastructure/models/yes_no_model.dart';

/// Yes No Service
/// 
/// This service is responsible for fetching the answer from the API.
class YesNoService {
  final _dio = Dio();

  /// Get Answer Async
  /// 
  /// This method fetches the answer from the API and returns it as a [Message].
  Future<Message> getAnswerAsync() async {
    final response = await _dio.get("https://yesno.wtf/api");

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity(); 
  }
}
