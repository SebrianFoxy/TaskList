import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_mobile/presenter/calendar/bloc/calendar_bloc.dart';
import 'package:task_manager_mobile/presenter/login/bloc/login_bloc.dart';
import 'package:task_manager_mobile/presenter/login/page/check_auth.dart';
import 'package:task_manager_mobile/presenter/profile/bloc/profile/profile_bloc.dart';
import 'package:task_manager_mobile/presenter/profile/bloc/telegram_code/telegram_code_bloc.dart';
import 'package:task_manager_mobile/presenter/profile/page/profile.dart';
import 'package:task_manager_mobile/presenter/registration/bloc/registration_bloc.dart';
import 'package:task_manager_mobile/presenter/registration/page/registration.dart';
import 'package:task_manager_mobile/presenter/settings/repositories/settings_repositories.dart';
import 'package:task_manager_mobile/presenter/settings/theme/cubit/theme_cubit.dart';
import 'package:task_manager_mobile/presenter/settings/page/settings.dart';
import 'package:task_manager_mobile/presenter/settings/theme/page/theme.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';
import 'package:task_manager_mobile/service/get_it/service_locator.dart';
import 'package:task_manager_mobile/service/shared_preferences/cache_service.dart';
import 'presenter/task_list/page/task_list.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'core/utils/app_bloc_observer.dart';
import 'presenter/calendar/page/calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'presenter/login/page/login.dart';


Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = SimpleBlocObserver();
  Bloc.transformer = bloc_concurrency.sequential();
  await initLocator();
  runApp(MyApp(cacheService: getIt<CacheService>()));
}

enum AppRoute {
  tasks,
  calendar,
  settings,
  login,
  registration,
  profile,
  checkAuth,
}

final GoRouter _router = GoRouter(
  initialLocation: '/check_auth',
  routes: <RouteBase>[
    GoRoute(
      path: '/tasks',
      name: AppRoute.tasks.name,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const TaskListPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/calendar',
      name: AppRoute.calendar.name,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const CalendarPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/settings',
      name: AppRoute.settings.name,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const SettingsPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/login',
      name: AppRoute.login.name,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const LoginPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/registration',
      name: AppRoute.registration.name,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const RegistrationPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/profie',
      name: AppRoute.profile.name,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const ProfilePage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      ),
    ),
    GoRoute(
      path: '/check_auth',
      name: AppRoute.checkAuth.name,
      pageBuilder: (context, state) => CustomTransitionPage<void>(
        key: state.pageKey,
        child: const CheckAuthPage(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        },
      )
    ),
  ],
);

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.cacheService});

  final CacheService cacheService;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final settingsRepository = SettingsRepository(cacheService: widget.cacheService);
    initializeDateFormatting('ru_RU');
    return MultiBlocProvider(
        providers: [
          BlocProvider<TaskListBloc>(
            create: (context) => getIt<TaskListBloc>()..add(const TaskListEvent.fetch()),
          ),
          BlocProvider(create: (context) => CalendarListBloc(),
          ),
          BlocProvider(create: (context) => ThemeCubit(
            settingsRepository: settingsRepository)
          ),
          BlocProvider(create: (context) => getIt<LoginBloc>(),
          ),
          BlocProvider(create: (context) => RegistrationBloc(),
          ),
          BlocProvider(create: (context) => getIt<ProfileBloc>(),
          ),
          BlocProvider(create: (context) => TelegramCodeBloc(),
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