// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskList _$TaskListFromJson(Map<String, dynamic> json) {
  return _TaskList.fromJson(json);
}

/// @nodoc
mixin _$TaskList {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'tasks')
  List<TaskItem>? get tasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_list_type', defaultValue: TasListType.user)
  TasListType? get taskListType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskListCopyWith<TaskList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskListCopyWith<$Res> {
  factory $TaskListCopyWith(TaskList value, $Res Function(TaskList) then) =
      _$TaskListCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          String? id,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'tasks')
          List<TaskItem>? tasks,
      @JsonKey(name: 'task_list_type', defaultValue: TasListType.user)
          TasListType? taskListType});
}

/// @nodoc
class _$TaskListCopyWithImpl<$Res> implements $TaskListCopyWith<$Res> {
  _$TaskListCopyWithImpl(this._value, this._then);

  final TaskList _value;
  // ignore: unused_field
  final $Res Function(TaskList) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tasks = freezed,
    Object? taskListType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskItem>?,
      taskListType: taskListType == freezed
          ? _value.taskListType
          : taskListType // ignore: cast_nullable_to_non_nullable
              as TasListType?,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskListCopyWith<$Res> implements $TaskListCopyWith<$Res> {
  factory _$$_TaskListCopyWith(
          _$_TaskList value, $Res Function(_$_TaskList) then) =
      __$$_TaskListCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          String? id,
      @JsonKey(name: 'title')
          String? title,
      @JsonKey(name: 'description')
          String? description,
      @JsonKey(name: 'tasks')
          List<TaskItem>? tasks,
      @JsonKey(name: 'task_list_type', defaultValue: TasListType.user)
          TasListType? taskListType});
}

/// @nodoc
class __$$_TaskListCopyWithImpl<$Res> extends _$TaskListCopyWithImpl<$Res>
    implements _$$_TaskListCopyWith<$Res> {
  __$$_TaskListCopyWithImpl(
      _$_TaskList _value, $Res Function(_$_TaskList) _then)
      : super(_value, (v) => _then(v as _$_TaskList));

  @override
  _$_TaskList get _value => super._value as _$_TaskList;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? tasks = freezed,
    Object? taskListType = freezed,
  }) {
    return _then(_$_TaskList(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: tasks == freezed
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskItem>?,
      taskListType: taskListType == freezed
          ? _value.taskListType
          : taskListType // ignore: cast_nullable_to_non_nullable
              as TasListType?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskList implements _TaskList {
  _$_TaskList(
      {@JsonKey(name: 'id')
          this.id,
      @JsonKey(name: 'title')
          this.title,
      @JsonKey(name: 'description')
          this.description,
      @JsonKey(name: 'tasks')
          final List<TaskItem>? tasks,
      @JsonKey(name: 'task_list_type', defaultValue: TasListType.user)
          this.taskListType})
      : _tasks = tasks;

  factory _$_TaskList.fromJson(Map<String, dynamic> json) =>
      _$$_TaskListFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  final List<TaskItem>? _tasks;
  @override
  @JsonKey(name: 'tasks')
  List<TaskItem>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'task_list_type', defaultValue: TasListType.user)
  final TasListType? taskListType;

  @override
  String toString() {
    return 'TaskList(id: $id, title: $title, description: $description, tasks: $tasks, taskListType: $taskListType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskList &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other.taskListType, taskListType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(taskListType));

  @JsonKey(ignore: true)
  @override
  _$$_TaskListCopyWith<_$_TaskList> get copyWith =>
      __$$_TaskListCopyWithImpl<_$_TaskList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskListToJson(
      this,
    );
  }
}

abstract class _TaskList implements TaskList {
  factory _TaskList(
      {@JsonKey(name: 'id')
          final String? id,
      @JsonKey(name: 'title')
          final String? title,
      @JsonKey(name: 'description')
          final String? description,
      @JsonKey(name: 'tasks')
          final List<TaskItem>? tasks,
      @JsonKey(name: 'task_list_type', defaultValue: TasListType.user)
          final TasListType? taskListType}) = _$_TaskList;

  factory _TaskList.fromJson(Map<String, dynamic> json) = _$_TaskList.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'tasks')
  List<TaskItem>? get tasks;
  @override
  @JsonKey(name: 'task_list_type', defaultValue: TasListType.user)
  TasListType? get taskListType;
  @override
  @JsonKey(ignore: true)
  _$$_TaskListCopyWith<_$_TaskList> get copyWith =>
      throw _privateConstructorUsedError;
}
