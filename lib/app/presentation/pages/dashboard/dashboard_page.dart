import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:tasklist/app/application/service/bottom_sheets/app_bottom_sheet.dart';
import 'package:tasklist/app/application/state/actions/tasks/fetch_task_list_action.dart';
import 'package:tasklist/app/application/state/state/app_state.dart';
import 'package:tasklist/app/application/state/view_models/dashboard/dashboard_view_model.dart';
import 'package:tasklist/app/domain/core/entities/tasks/task_list.dart';
import 'package:tasklist/app/infrastructure/repository/repository.dart';
import 'package:tasklist/app/presentation/pages/dashboard/widgets/app_bottom_bar.dart';
import 'package:tasklist/app/presentation/pages/dashboard/widgets/custom_app_bar.dart';
import 'package:tasklist/app/presentation/pages/dashboard/widgets/task_list_widget.dart';
import 'package:tasklist/app/presentation/pages/tasks/widgets/create_task_list_bottom_sheet.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    controller = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DashboardViewModel>(
      converter: (Store<AppState> store) => DashboardViewModel.fromStore(store),
      onInit: (Store<AppState> store) async {
        await StoreProvider.dispatch(
          context,
          FetchTaskListAction(
            context: context,
            client: DataRepository.getRepository(),
          ),
        );
        controller = TabController(
          length: store.state.taskState!.tasksLists!.length,
          vsync: this,
        );
      },
      builder: (BuildContext context, DashboardViewModel vm) {
        return Scaffold(
          body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                CustomAppBar(
                  tabController: controller,
                  taskLists: vm.taskLists,
                ),
              ];
            },
            body: TabBarView(
              controller: controller,
              children: vm.taskLists
                  .map(
                    (TaskList list) => TaskListWidget(
                      taskList: list,
                    ),
                  )
                  .toList(),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showAppBottomSheet(
                context: context,
                body: CreateTaskListBottomSheet(
                  taskList: vm.taskLists[controller.index],
                ),
              );
            },
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: AppBottomBar(),
        );
      },
    );
  }
}
