// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'task.freezed.dart';
part 'task.g.dart';

@freezed
class Task with _$Task {
  factory Task({
    String? id,
    String? title,
    String? description,
    bool? done,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Task;

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
}
