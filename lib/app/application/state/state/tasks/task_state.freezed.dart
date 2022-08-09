// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskState _$TaskStateFromJson(Map<String, dynamic> json) {
  return _TaskState.fromJson(json);
}

/// @nodoc
mixin _$TaskState {
  List<TaskList>? get tasksLists => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res>;
  $Res call({List<TaskList>? tasksLists, String? error});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res> implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  final TaskState _value;
  // ignore: unused_field
  final $Res Function(TaskState) _then;

  @override
  $Res call({
    Object? tasksLists = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      tasksLists: tasksLists == freezed
          ? _value.tasksLists
          : tasksLists // ignore: cast_nullable_to_non_nullable
              as List<TaskList>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_TaskStateCopyWith(
          _$_TaskState value, $Res Function(_$_TaskState) then) =
      __$$_TaskStateCopyWithImpl<$Res>;
  @override
  $Res call({List<TaskList>? tasksLists, String? error});
}

/// @nodoc
class __$$_TaskStateCopyWithImpl<$Res> extends _$TaskStateCopyWithImpl<$Res>
    implements _$$_TaskStateCopyWith<$Res> {
  __$$_TaskStateCopyWithImpl(
      _$_TaskState _value, $Res Function(_$_TaskState) _then)
      : super(_value, (v) => _then(v as _$_TaskState));

  @override
  _$_TaskState get _value => super._value as _$_TaskState;

  @override
  $Res call({
    Object? tasksLists = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_TaskState(
      tasksLists: tasksLists == freezed
          ? _value._tasksLists
          : tasksLists // ignore: cast_nullable_to_non_nullable
              as List<TaskList>?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskState implements _TaskState {
  _$_TaskState({final List<TaskList>? tasksLists, this.error})
      : _tasksLists = tasksLists;

  factory _$_TaskState.fromJson(Map<String, dynamic> json) =>
      _$$_TaskStateFromJson(json);

  final List<TaskList>? _tasksLists;
  @override
  List<TaskList>? get tasksLists {
    final value = _tasksLists;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'TaskState(tasksLists: $tasksLists, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskState &&
            const DeepCollectionEquality()
                .equals(other._tasksLists, _tasksLists) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasksLists),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      __$$_TaskStateCopyWithImpl<_$_TaskState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskStateToJson(
      this,
    );
  }
}

abstract class _TaskState implements TaskState {
  factory _TaskState({final List<TaskList>? tasksLists, final String? error}) =
      _$_TaskState;

  factory _TaskState.fromJson(Map<String, dynamic> json) =
      _$_TaskState.fromJson;

  @override
  List<TaskList>? get tasksLists;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
