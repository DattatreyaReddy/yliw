import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/converter/epoch_date_time_converter.dart';
import '../../../common/utils/json_abstract.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message implements JsonAbstract {
  factory Message({
    required String recordId,
    required String? groupId,
    @EpochDateTimeConverter() required DateTime dateCreated,
    @EpochDateTimeConverter() required DateTime lastModified,
    required String message,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

typedef ProcessedMessage = ({
  Message message,
  bool isContinuous,
  bool hasContinuous,
  bool dateChanged
});
