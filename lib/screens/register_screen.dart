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
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            const SizedBox(height: 100),
            const Text('Регистрация',
                style: TextStyle(color: Colors.white, fontSize: 28)),
            const SizedBox(height: 32),
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
            PrimaryButton(
                text: 'Зарегистрироваться',
                onTap: () {
                  // TODO: Firebase Auth register
                }),
          ],
        ),
      ),
    );
  }
}
