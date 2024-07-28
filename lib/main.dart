import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_mobile/data/drift/drift_database.dart';
import 'package:task_manager_mobile/presenter/calendar/bloc/calendar_bloc.dart';
import 'package:task_manager_mobile/presenter/settings/repositories/settings_repositories.dart';
import 'package:task_manager_mobile/presenter/settings/theme/cubit/theme_cubit.dart';
import 'package:task_manager_mobile/presenter/settings/theme/page/settings.dart';
import 'package:task_manager_mobile/presenter/settings/theme/page/theme.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';
import 'presenter/task_list/page/task_list.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'core/utils/app_bloc_observer.dart';
import 'presenter/calendar/page/calendar.dart';
import 'package:intl/date_symbol_data_local.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  Bloc.observer = SimpleBlocObserver();
  Bloc.transformer = bloc_concurrency.sequential();
  runApp(MyApp(preferences: prefs));
}

enum AppRoute {
  tasks,
  calendar,
  settings
}

final GoRouter _router = GoRouter(
  initialLocation: '/tasks',
  routes: <RouteBase>[
    GoRoute(
      path: '/tasks',
      name: AppRoute.tasks.name,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const TaskListPage(),
      ),
    ),
    GoRoute(
      path: '/calendar',
      name: AppRoute.calendar.name,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const CalendarPage(),
      ),
    ),
    GoRoute(
      path: '/settings',
      name: AppRoute.settings.name,
      pageBuilder: (context, state) => NoTransitionPage<void>(
        key: state.pageKey,
        child: const SettingsPage(),
      ),
    ),
  ],
);

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.preferences});

  final SharedPreferences preferences;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final settingsRepository = SettingsRepository(preferences: widget.preferences);
    initializeDateFormatting('ru_RU');
    return MultiBlocProvider(
        providers: [
          BlocProvider<TaskListBloc>(
            create: (context) => TaskListBloc()..add(const TaskListEvent.fetch()),
          ),
          BlocProvider(create: (context) => CalendarListBloc(),
          ),
          BlocProvider(create: (context) => ThemeCubit(
            settingsRepository: settingsRepository)
          ),
        ],
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              theme: state.isDark ? darkTheme : lightTheme,
              routerConfig: _router
          );
        },
      )
    );
  }
}