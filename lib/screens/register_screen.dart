import 'package:flutter/material.dart';

import '../widgets/auth_text_field.dart';
import '../widgets/primary_button.dart';

class RegisterScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  RegisterScreen({super.key});

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
              padding: const EdgeInsets.all(24),
              child: ListView(
                children: [
                  const SizedBox(height: 100),
                  const Text('Регистрация',
                      style: TextStyle(color: Colors.white, fontSize: 28)),
                  const SizedBox(height: 16),
                  AuthTextField(hint: 'Имя', controller: nameController),
                  const SizedBox(height: 16),
                  AuthTextField(hint: 'email', controller: emailController),
                  const SizedBox(height: 16),
                  AuthTextField(
                      hint: 'Пароль\n8-16 символов',
                      controller: passwordController,
                      obscureText: true),
                  const SizedBox(height: 16),
                  AuthTextField(
                      hint: 'Подтверждение пароля\n8-16 символов',
                      controller: confirmPasswordController,
                      obscureText: true),
                  const SizedBox(height: 32),
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
              child: PrimaryButton(
                text: 'Зарегистрироваться',
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                backgroundColor: Colors.grey[800]!,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
