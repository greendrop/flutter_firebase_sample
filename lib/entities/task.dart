// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  factory Task({
    String? id,
    @JsonKey(name: 'user_id') String? userId,
    String? title,
    String? description,
    bool? done,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Task;
  const Task._();

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  factory Task.fromFirestoreJson(String id, Map<String, dynamic> json) {
    json['id'] = id;
    if (json['created_at'] != null) {
      json['created_at'] =
          (json['created_at'] as Timestamp).toDate().toIso8601String();
    }
    if (json['updated_at'] != null) {
      json['updated_at'] =
          (json['updated_at'] as Timestamp).toDate().toIso8601String();
    }
    return _$TaskFromJson(json);
  }

  Map<String, dynamic> toFirestoreJson() {
    final json = toJson()..remove('id');
    if (json['created_at'] != null) {
      json['created_at'] =
          Timestamp.fromDate(DateTime.parse(json['created_at'] as String));
    }
    if (json['updated_at'] != null) {
      json['updated_at'] =
          Timestamp.fromDate(DateTime.parse(json['updated_at'] as String));
    }

    return json;
  }

  static String? titleValidator(String? value, L10n l10n) {
    if (value == null || value.isEmpty) {
      return l10n.taskTitleValidateBlank;
    }
    if (value.length > 255) {
      return l10n.taskTitleValidateTooLong;
    }
    return null;
  }

  static String? descriptionValidator(String? value, L10n l10n) {
    return null;
  }
}
