import 'package:async_redux/async_redux.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasklist/app/application/state/state/tasks/task_state.dart';

part 'app_state.freezed.dart';
part 'app_state.g.dart';

@freezed
class AppState with _$AppState {
  factory AppState({
    int? currentTabIndex,
    TaskState? taskState,
    @JsonKey(ignore: true) Wait? wait,
  }) = _AppState;
  factory AppState.fromJson(Map<String, dynamic> json) =>
      _$AppStateFromJson(json);

  factory AppState.initial() => AppState(
        currentTabIndex: 0,
        taskState: TaskState.initial(),
        wait: Wait(),
      );
}
