import 'package:flutter/material.dart';

import '../widgets/auth_text_field.dart';
import '../widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/background.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: -400,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/pattern.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Вход',
                      style: TextStyle(color: Colors.white, fontSize: 28)),
                  const SizedBox(height: 32),
                  AuthTextField(
                    label: 'e-mail',
                    hint: 'Введите электронную почту',
                    controller: emailController,
                  ),
                  const SizedBox(height: 16),
                  AuthTextField(
                    label: 'Подтверждение пароля',
                    hint: 'Введите пароль',
                    controller: passwordController,
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 32,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  PrimaryButton(
                    text: 'Войти',
                    onTap: () {
                      // TODO: Firebase Auth login
                    },
                  ),
                  const SizedBox(height: 16),
                  PrimaryButton(
                    text: 'Регистрация',
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    backgroundColor: Colors.grey[800]!,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
