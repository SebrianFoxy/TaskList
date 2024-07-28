import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_mobile/main.dart';
import 'package:task_manager_mobile/presenter/calendar/bloc/calendar_bloc.dart';
import 'package:task_manager_mobile/presenter/settings/theme/cubit/theme_cubit.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  int _selectedIndex = 3;
  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month,
    Icons.person,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state.isDark;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Настройки', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Темная тема', style: TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                      Switch(
                        value: isDark,
                        onChanged: (value) {
                          context.read<ThemeCubit>().setThemeBrightness(value ? Brightness.dark : Brightness.light);
                        }
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        activeColor: Colors.red,
        backgroundColor: context.read<ThemeCubit>().state.brightness == Brightness.dark ? Colors.black  : Colors.white,
        onTap: (index) {
          if (index == 0) {
            context.goNamed(AppRoute.tasks.name);
            context.read<TaskListBloc>().add(const TaskListEvent.fetch());
          }
          else if (index == 1) {
            context.goNamed(AppRoute.calendar.name);
            context.read<CalendarListBloc>().add(const CalendarListEvent.fetch());
          }
          else if (index == 3) {
            context.goNamed(AppRoute.settings.name);
          }
        },
      ),
    );
  }
}
