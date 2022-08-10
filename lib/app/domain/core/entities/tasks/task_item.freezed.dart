// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskItem _$TaskItemFromJson(Map<String, dynamic> json) {
  return _TaskItem.fromJson(json);
}

/// @nodoc
mixin _$TaskItem {
  @JsonKey(name: 'uuid')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  String? get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'reminder_date')
  String? get reminderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'status', defaultValue: TaskStatus.pending)
  TaskStatus? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskItemCopyWith<TaskItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskItemCopyWith<$Res> {
  factory $TaskItemCopyWith(TaskItem value, $Res Function(TaskItem) then) =
      _$TaskItemCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'uuid')
          String? id,
      @JsonKey(name: 'parent_id')
          String? parentId,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'reminder_date')
          String? reminderDate,
      @JsonKey(name: 'status', defaultValue: TaskStatus.pending)
          TaskStatus? status});
}

/// @nodoc
class _$TaskItemCopyWithImpl<$Res> implements $TaskItemCopyWith<$Res> {
  _$TaskItemCopyWithImpl(this._value, this._then);

  final TaskItem _value;
  // ignore: unused_field
  final $Res Function(TaskItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? reminderDate = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderDate: reminderDate == freezed
          ? _value.reminderDate
          : reminderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus?,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskItemCopyWith<$Res> implements $TaskItemCopyWith<$Res> {
  factory _$$_TaskItemCopyWith(
          _$_TaskItem value, $Res Function(_$_TaskItem) then) =
      __$$_TaskItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'uuid')
          String? id,
      @JsonKey(name: 'parent_id')
          String? parentId,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'reminder_date')
          String? reminderDate,
      @JsonKey(name: 'status', defaultValue: TaskStatus.pending)
          TaskStatus? status});
}

/// @nodoc
class __$$_TaskItemCopyWithImpl<$Res> extends _$TaskItemCopyWithImpl<$Res>
    implements _$$_TaskItemCopyWith<$Res> {
  __$$_TaskItemCopyWithImpl(
      _$_TaskItem _value, $Res Function(_$_TaskItem) _then)
      : super(_value, (v) => _then(v as _$_TaskItem));

  @override
  _$_TaskItem get _value => super._value as _$_TaskItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? reminderDate = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_TaskItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      reminderDate: reminderDate == freezed
          ? _value.reminderDate
          : reminderDate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskItem implements _TaskItem {
  _$_TaskItem(
      {@JsonKey(name: 'uuid') this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'reminder_date') this.reminderDate,
      @JsonKey(name: 'status', defaultValue: TaskStatus.pending) this.status});

  factory _$_TaskItem.fromJson(Map<String, dynamic> json) =>
      _$$_TaskItemFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String? id;
  @override
  @JsonKey(name: 'parent_id')
  final String? parentId;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'reminder_date')
  final String? reminderDate;
  @override
  @JsonKey(name: 'status', defaultValue: TaskStatus.pending)
  final TaskStatus? status;

  @override
  String toString() {
    return 'TaskItem(id: $id, parentId: $parentId, title: $title, description: $description, reminderDate: $reminderDate, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskItem &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.reminderDate, reminderDate) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(parentId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(reminderDate),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_TaskItemCopyWith<_$_TaskItem> get copyWith =>
      __$$_TaskItemCopyWithImpl<_$_TaskItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskItemToJson(
      this,
    );
  }
}

abstract class _TaskItem implements TaskItem {
  factory _TaskItem(
      {@JsonKey(name: 'uuid')
          final String? id,
      @JsonKey(name: 'parent_id')
          final String? parentId,
      @JsonKey(name: 'title')
          final String? title,
      @JsonKey(name: 'description')
          final String? description,
      @JsonKey(name: 'reminder_date')
          final String? reminderDate,
      @JsonKey(name: 'status', defaultValue: TaskStatus.pending)
          final TaskStatus? status}) = _$_TaskItem;

  factory _TaskItem.fromJson(Map<String, dynamic> json) = _$_TaskItem.fromJson;

  @override
  @JsonKey(name: 'uuid')
  String? get id;
  @override
  @JsonKey(name: 'parent_id')
  String? get parentId;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'reminder_date')
  String? get reminderDate;
  @override
  @JsonKey(name: 'status', defaultValue: TaskStatus.pending)
  TaskStatus? get status;
  @override
  @JsonKey(ignore: true)
  _$$_TaskItemCopyWith<_$_TaskItem> get copyWith =>
      throw _privateConstructorUsedError;
}
