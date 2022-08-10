import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasklist/app/domain/core/objects/enums.dart';

part 'task_item.freezed.dart';
part 'task_item.g.dart';

@freezed
class TaskItem with _$TaskItem {
  factory TaskItem({
    @JsonKey(name: 'uuid') String? id,
    @JsonKey(name: 'parent_id') String? parentId,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'reminder_date') String? reminderDate,
    @JsonKey(name: 'status', defaultValue: TaskStatus.pending)
        TaskStatus? status,
  }) = _TaskItem;
  factory TaskItem.fromJson(Map<String, dynamic> json) =>
      _$TaskItemFromJson(json);
  factory TaskItem.initial() => TaskItem(
        id: null,
        title: null,
        description: null,
        reminderDate: null,
        status: null,
      );
}
