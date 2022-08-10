import 'package:async_redux/async_redux.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';

class SetTabIndexAction extends ReduxAction<AppState> {
  final int index;

  SetTabIndexAction(this.index);
  @override
  AppState? reduce() {
    return state.copyWith.call(
      currentTabIndex: index,
    );
  }
}
