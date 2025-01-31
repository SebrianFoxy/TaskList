import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager_mobile/main.dart';
import 'package:task_manager_mobile/presenter/registration/bloc/registration_bloc.dart';
import '../../../core/ui/ui.dart';
import 'package:flutter/gestures.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordRepeatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegistrationBloc, RegistrationState>(
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
          success: () {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.success,
              animType: AnimType.bottomSlide,
              title: 'Успешно',
              desc: 'На почту отправлено письмо для подтверждения аккаунта!',
              btnOkOnPress: () {},
              btnOkColor: Colors.red,
            ).show();
          },
          orElse: (){}
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: state.maybeWhen(
            loading: () {
              return const Center(child: CircularProgressIndicator());
            },
            orElse: () {
              return Scaffold(
                appBar: AppBar(
                  title: const Center(
                    child: Text('Регистрация'),
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
                            autocorrect: false,
                            autofocus: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                labelText: 'Пароль'
                            ),
                            controller: _passwordController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Введите пароль!';
                              }
                              return null;
                            },
                            autocorrect: false,
                            autofocus: false,
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.password),
                                labelText: 'Повторите пароль'
                            ),
                            controller: _passwordRepeatController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Введите пароль!';
                              }
                              if (value != _passwordController.text){
                                return 'Пароль несовпадает!';
                              }
                              return null;
                            },
                            autocorrect: false,
                            autofocus: false,
                            obscureText: true,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CreateAccountButton(
                            nameButton: 'Зарегистрировать аккаунт',
                            onPressed: () {
                              final checkValid = _formKey.currentState!.validate();
                              if (checkValid) {
                                context.read<RegistrationBloc>().add(RegistrationEvent.registration(
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
                                  text: 'Есть аккаунт? ',
                                  style: const TextStyle(color: Colors.black),
                                  children: [
                                    TextSpan(
                                      text: 'Авторизоваться',
                                      style: const TextStyle(color: Colors.blue,
                                          fontWeight: FontWeight.bold),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          context.goNamed(AppRoute.login.name);
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
            }),
        );
      },
    );
  }
}
