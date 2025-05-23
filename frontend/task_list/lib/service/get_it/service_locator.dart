import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_mobile/presenter/profile/bloc/profile/profile_bloc.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';
import '../../presenter/login/bloc/login_bloc.dart';
import '../shared_preferences/cache_service.dart';

final getIt = GetIt.instance;

Future<void> initLocator() async {
  final prefs = await SharedPreferencesWithCache.create(
    cacheOptions: const SharedPreferencesWithCacheOptions(
      allowList: {'dark_theme_selected', 'telegram_notification'},
    ),
  );

  getIt.registerSingleton<SharedPreferencesWithCache>(prefs);

  getIt.registerSingleton<CacheService>(CacheService(prefs));

  getIt.registerSingleton<LoginBloc>(LoginBloc());

  getIt.registerSingleton<TaskListBloc>(TaskListBloc());

  getIt.registerSingleton<ProfileBloc>(ProfileBloc());

}

