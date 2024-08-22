import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:task_manager_mobile/core/ui/ui.dart';
import 'package:task_manager_mobile/main.dart';
import 'package:task_manager_mobile/presenter/settings/notification/bloc/notification_bloc.dart';
import 'package:task_manager_mobile/presenter/settings/theme/cubit/theme_cubit.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final int _selectedIndex = 3;
  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month,
    Icons.person,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    final isDark = context.watch<ThemeCubit>().state.isDark;
    final isNotification = context.watch<NotificationBloc>().state.notification;
    final isAlarmNotification = context.watch<NotificationBloc>().state.alarmNotification;
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
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const Text('Оповещения', style: TextStyle(
                  //         fontSize: 20, fontWeight: FontWeight.bold)),
                  //     Switch(
                  //         value: isNotification,
                  //         onChanged: (value) {
                  //
                  //         }
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     const Text('Оповещения по времени', style: TextStyle(
                  //         fontSize: 20, fontWeight: FontWeight.bold)),
                  //     Switch(
                  //         value: isAlarmNotification,
                  //         onChanged: (value) {
                  //
                  //         }
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: MyNavigationBar(
        selectIndex: _selectedIndex,
      ),
    );
  }
}
