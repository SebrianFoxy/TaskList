import 'package:task_manager_mobile/data/notification/notification_service/local_notification.dart';
import 'package:task_manager_mobile/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_mobile/presenter/calendar/bloc/calendar_bloc.dart';
import 'package:task_manager_mobile/presenter/settings/theme/cubit/theme_cubit.dart';
import 'package:task_manager_mobile/presenter/settings/theme/page/theme.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';
import '../../../core/ui/ui.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';


class TaskListPage extends StatefulWidget {
  const TaskListPage({super.key});

  @override
  State<TaskListPage> createState() => _TaskListPageState();
}

class _TaskListPageState extends State<TaskListPage> {
  int _selectedIndex = 0;
  String _selectedItem = 'Задачи на сегодня';
  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month,
    Icons.person,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchTask = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<TaskListBloc, TaskListState>(
        builder: (context, state) {
          return state.maybeWhen(
              successLoading: (getTasks) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 55),
                              child: Center(
                                child: TimeNow(),
                              ),
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SearchBar(
                        controller: _searchTask,
                        onChanged: (value) {
                          context.read<TaskListBloc>().add(TaskListEvent.searchTask(query: _searchTask.text.toString()));
                        },
                        hintText: 'Найти свою задачу',
                        padding: const MaterialStatePropertyAll<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 16.0)),
                        leading: const Icon(Icons.search),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text('Мои задачи ',
                                    style: TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.bold)),
                                Text(getTasks.length.toString(),
                                    style: const TextStyle(
                                        fontSize: 20, fontWeight: FontWeight.w400)
                                ),
                              ],
                            ),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: _selectedItem,
                                icon: const Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedItem = newValue!;
                                    context.read<TaskListBloc>().add(TaskListEvent.filteredTasks(filter: _selectedItem));
                                  });
                                },
                                items: <String>['Задачи на сегодня', 'Все задачи']
                                    .map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value, style: TextStyle(
                                      color: Theme.of(context).colorScheme.onBackground,
                                    )),
                                  );
                                }).toList(),
                                borderRadius: BorderRadius.circular(10),
                                itemHeight: 48,
                                alignment: Alignment.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // ElevatedButton(onPressed: () async {
                    //   NotificationService().checkPendingNotifications();
                    // }, child: Text('Press')),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.only(bottom: 12),
                        shrinkWrap: true,
                        itemCount: getTasks.length,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              TaskCard(
                                taskDescription: getTasks[index].task,
                                firstTime: getTasks[index].firstTime,
                                id: getTasks[index].id,
                                stateTask: getTasks[index].stateTask,
                                onPressedChangeState: () {
                                  context.read<TaskListBloc>().add(TaskListEvent.changeStateTask(id: getTasks[index].id));
                                },
                                onPressedDeleteTask: () {
                                  context.read<TaskListBloc>().add(TaskListEvent.deleteTask(id: getTasks[index].id));
                                },
                              ),
                              const SizedBox(height: 16,),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                );
              },
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
          );
        },
      ),
      floatingActionButton: DialogAddTask(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyNavigationBar(
        selectIndex: _selectedIndex,
      ),
    );
  }
}
