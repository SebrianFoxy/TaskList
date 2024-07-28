import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_mobile/main.dart';
import 'package:intl/intl.dart';
import 'package:task_manager_mobile/presenter/calendar/bloc/calendar_bloc.dart';
import 'package:task_manager_mobile/presenter/settings/theme/cubit/theme_cubit.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';
import '../../../core/ui/ui.dart';
import 'package:drift/native.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({super.key});

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  int _selectedIndex = 1;
  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month,
    Icons.person,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CalendarListBloc, CalendarListState>(
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
                          padding: EdgeInsets.only(top:55),
                          child: Center(
                            child: TimeNow(),
                          ),
                        ),
                      )
                    ],
                  ),
                  CalendarCard(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 2,
                            endIndent: 10,
                          ),
                        ),
                        Icon(Icons.task_outlined, color: Colors.red),
                        Expanded(
                          child: Divider(
                            color: Colors.grey,
                            thickness: 2,
                            indent: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                              secondTime: getTasks[index].secondTime,
                              id: getTasks[index].id,
                              stateTask: getTasks[index].stateTask,
                              onPressedChangeState: () {
                                context.read<CalendarListBloc>().
                                add(CalendarListEvent.changeStateTask(id: getTasks[index].id));
                              },
                              onPressedDeleteTask: () {
                                context.read<CalendarListBloc>().
                                add(CalendarListEvent.deleteTask(id: getTasks[index].id));
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
            },orElse: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          );
        },
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        activeColor: Colors.red,
        backgroundColor: context.read<ThemeCubit>().state.brightness == Brightness.dark ? Colors.black : Colors.white,
        onTap: (index) {
          if (index == 0){
            context.goNamed(AppRoute.tasks.name);
            context.read<TaskListBloc>().add(const TaskListEvent.fetch());
          }
          else if (index == 1){
            context.goNamed(AppRoute.calendar.name);
          }
          else if (index == 3) {
            context.goNamed(AppRoute.settings.name);
          }
        },
      ),
    );
  }
}