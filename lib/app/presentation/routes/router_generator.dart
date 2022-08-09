import 'package:flutter/cupertino.dart';
import 'package:tasklist/app/presentation/pages/dashboard/dashboard_page.dart';
import 'package:tasklist/app/presentation/pages/tasks/list/create_task_list_page.dart';
import 'package:tasklist/app/presentation/routes/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // final dynamic routeArgs = settings.arguments;
  Widget currentWidget = DashboardPage();

  switch (settings.name) {
    case AppRoutes.dashboardPage:
      currentWidget = DashboardPage();
      break;
    case AppRoutes.createTaskListPage:
      currentWidget = CreateTaskListPage();
      break;

    default:
      currentWidget = DashboardPage();
  }

  /// This is preferred as it allows us to change only one place
  /// within the routing to adapt to different routing behaviors and animations.
  return CupertinoPageRoute<Widget>(
    builder: (BuildContext context) => currentWidget,
  );
}
