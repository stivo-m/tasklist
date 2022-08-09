import 'package:freezed_annotation/freezed_annotation.dart';

part 'system_error.freezed.dart';
part 'system_error.g.dart';

@freezed
class SystemError with _$SystemError {
  factory SystemError({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'stack_trace') String? stackTrace,
  }) = _SystemError;
  factory SystemError.fromJson(Map<String, dynamic> json) =>
      _$SystemErrorFromJson(json);
  factory SystemError.initial() => SystemError(
        title: null,
        description: null,
        stackTrace: null,
      );
}
