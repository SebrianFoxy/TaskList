import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';
import '../../presenter/login/bloc/login_bloc.dart';

final getIt = GetIt.instance;

void initLocator() {
  getIt.registerSingleton<LoginBloc>(LoginBloc());

  getIt.registerSingleton<TaskListBloc>(TaskListBloc());
}

