// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'system_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SystemError _$SystemErrorFromJson(Map<String, dynamic> json) {
  return _SystemError.fromJson(json);
}

/// @nodoc
mixin _$SystemError {
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'stack_trace')
  String? get stackTrace => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SystemErrorCopyWith<SystemError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SystemErrorCopyWith<$Res> {
  factory $SystemErrorCopyWith(
          SystemError value, $Res Function(SystemError) then) =
      _$SystemErrorCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'stack_trace') String? stackTrace});
}

/// @nodoc
class _$SystemErrorCopyWithImpl<$Res> implements $SystemErrorCopyWith<$Res> {
  _$SystemErrorCopyWithImpl(this._value, this._then);

  final SystemError _value;
  // ignore: unused_field
  final $Res Function(SystemError) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SystemErrorCopyWith<$Res>
    implements $SystemErrorCopyWith<$Res> {
  factory _$$_SystemErrorCopyWith(
          _$_SystemError value, $Res Function(_$_SystemError) then) =
      __$$_SystemErrorCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'title') String? title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'stack_trace') String? stackTrace});
}

/// @nodoc
class __$$_SystemErrorCopyWithImpl<$Res> extends _$SystemErrorCopyWithImpl<$Res>
    implements _$$_SystemErrorCopyWith<$Res> {
  __$$_SystemErrorCopyWithImpl(
      _$_SystemError _value, $Res Function(_$_SystemError) _then)
      : super(_value, (v) => _then(v as _$_SystemError));

  @override
  _$_SystemError get _value => super._value as _$_SystemError;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_$_SystemError(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      stackTrace: stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SystemError implements _SystemError {
  _$_SystemError(
      {@JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'stack_trace') this.stackTrace});

  factory _$_SystemError.fromJson(Map<String, dynamic> json) =>
      _$$_SystemErrorFromJson(json);

  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'stack_trace')
  final String? stackTrace;

  @override
  String toString() {
    return 'SystemError(title: $title, description: $description, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SystemError &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$$_SystemErrorCopyWith<_$_SystemError> get copyWith =>
      __$$_SystemErrorCopyWithImpl<_$_SystemError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SystemErrorToJson(
      this,
    );
  }
}

abstract class _SystemError implements SystemError {
  factory _SystemError(
      {@JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'stack_trace') final String? stackTrace}) = _$_SystemError;

  factory _SystemError.fromJson(Map<String, dynamic> json) =
      _$_SystemError.fromJson;

  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'stack_trace')
  String? get stackTrace;
  @override
  @JsonKey(ignore: true)
  _$$_SystemErrorCopyWith<_$_SystemError> get copyWith =>
      throw _privateConstructorUsedError;
}
