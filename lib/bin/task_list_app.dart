import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/domain/core/objects/enums.dart';
import 'package:tasklist/app/domain/core/objects/strings.dart';
import 'package:tasklist/app/presentation/pages/dashboard/dashboard_page.dart';
import 'package:tasklist/app/presentation/routes/router_generator.dart';
import 'package:tasklist/app/presentation/theme/app_theme.dart';

class TaskListApp extends StatelessWidget {
  const TaskListApp({
    Key? key,
    this.appContext = AppContext.development,
    this.store,
  }) : super(key: key);

  final AppContext appContext;
  final Store<AppState>? store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store ?? Store<AppState>(initialState: AppState.initial()),
      child: MaterialApp(
        debugShowCheckedModeBanner: appContext == AppContext.development,
        title: AppStrings.appName,
        themeMode: ThemeMode.light,
        theme: AppTheme.lightTheme(),
        darkTheme: AppTheme.darkTheme(),
        onGenerateRoute: generateRoute,
        home: DashboardPage(),
      ),
    );
  }
}
