import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_mobile/main.dart';
import 'package:task_manager_mobile/presenter/login/bloc/login_bloc.dart';


class CheckAuthPage extends StatefulWidget {
  const CheckAuthPage({super.key});

  @override
  State<CheckAuthPage> createState() => _CheckAuthPageState();
}

class _CheckAuthPageState extends State<CheckAuthPage> {
  @override
  Widget build(BuildContext context) {
    context.read<LoginBloc>().add(const LoginEvent.checkAuth());
    return Scaffold(
      body: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          state.maybeWhen(
              authenticated: () {
                context.goNamed(AppRoute.tasks.name);
              },
              unauthenticated: () {
                context.goNamed(AppRoute.tasks.name);
              },
              orElse: () {

              });
        },
        builder: (context, state) {
          state.maybeWhen(
              orElse: () {});
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
