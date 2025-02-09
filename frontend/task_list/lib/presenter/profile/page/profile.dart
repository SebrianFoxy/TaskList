import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager_mobile/presenter/login/bloc/login_bloc.dart';

import '../../../core/ui/ui.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 2;
  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month,
    Icons.person,
    Icons.settings,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return Scaffold(
          appBar: state.maybeWhen(
            authenticated: () {
              return AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Профиль', style: TextStyle(fontWeight: FontWeight.bold),),
                    IconButton(onPressed: () {
                      context.read<LoginBloc>().add(const LoginEvent.logout());
                    }, icon: const Icon(Icons.door_front_door_outlined))
                  ],
                ),
                centerTitle: true,
              );
            },
            orElse: () {
              return AppBar(
              title: const Text('Профиль', style: TextStyle(fontWeight: FontWeight.bold),),
              centerTitle: true,
            );
          }),
          body: state.maybeWhen(
            authenticated: () {
              return const ProfileAuthCard();
            },
            orElse: () {
              return const ProfileUnauthCard();
            }
          ),
          bottomNavigationBar: MyNavigationBar(
            selectIndex: _selectedIndex,
          ),
        );
      },
    );
  }
}
