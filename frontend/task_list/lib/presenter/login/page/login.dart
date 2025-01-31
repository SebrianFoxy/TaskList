import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_mobile/presenter/login/bloc/login_bloc.dart';
import 'package:task_manager_mobile/presenter/task_list/bloc/task_list_bloc.dart';
import '../../../core/ui/ui.dart';
import 'package:flutter/gestures.dart';

import '../../../main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeWhen(
          failure: (message) {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.error,
              animType: AnimType.bottomSlide,
              title: 'Ошибка',
              desc: message,
              btnOkOnPress: () {},
              btnOkColor: Colors.red,
            ).show();
          },
          authenticated: () {
            context.goNamed(AppRoute.tasks.name);
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: state.maybeWhen(
              loading: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              orElse: () {
                return Scaffold(
                  appBar: AppBar(
                    title: Center(
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              context.goNamed(AppRoute.tasks.name);
                            },
                          ),
                          const SizedBox(width: 80,),
                          const Text('Авторизация'),
                        ],
                      ),
                    ),
                  ),
                  body: SafeArea(
                    child: Container(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 20,
                        right: 20,
                      ),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                          )
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  labelText: 'Почта'
                              ),
                              autocorrect: false,
                              autofocus: false,
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Введите почту!';
                                }
                                final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
                                if (!emailRegex.hasMatch(value)) {
                                  return 'Введите корректный email';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  labelText: 'Пароль'
                              ),
                              autocorrect: false,
                              autofocus: false,
                              obscureText: true,
                              controller: _passwordController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Введите пароль!';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CreateAccountButton(
                              nameButton: 'Войти в аккаунт',
                              onPressed: () {
                                final checkValid = _formKey.currentState!.validate();
                                if (checkValid) {
                                  context.read<LoginBloc>().add(LoginEvent.login(
                                      email: _emailController.text,
                                      password: _passwordController.text));
                                }
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RichText(
                                  text: TextSpan(
                                    text: 'Нет аккаунта? ',
                                    style: const TextStyle(color: Colors.black),
                                    children: [
                                      TextSpan(
                                        text: 'Создать',
                                        style: const TextStyle(color: Colors.blue,
                                            fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            context.goNamed(AppRoute.registration.name);
                                          },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
            }
          ),
        );
      },
    );
  }
}
