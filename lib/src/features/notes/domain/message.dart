// Copyright (c) 2024 Panta Dattatreya Reddy
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at https://mozilla.org/MPL/2.0/.

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/constants/enums/generic_entity.dart';
import '../../../common/utils/converter/epoch_date_time_converter.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message implements GenericEntity<String> {
  factory Message({
    @JsonKey(name: 'recordId') required String id,
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
