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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Вход',
                  style: TextStyle(color: Colors.white, fontSize: 28)),
              const SizedBox(height: 32),
              AuthTextField(hint: 'email', controller: emailController),
              const SizedBox(height: 16),
              AuthTextField(
                  hint: 'Подтверждение пароля',
                  controller: passwordController,
                  obscureText: true),
              const SizedBox(height: 32),
              PrimaryButton(
                  text: 'Войти',
                  onTap: () {
                    // TODO: Firebase Auth login
                  }),
              const SizedBox(height: 16),
              PrimaryButton(
                text: 'Регистрация',
                onTap: () {
                  Navigator.pushNamed(context, '/register');
                },
                backgroundColor: Colors.grey[800]!,
              )
            ],
          ),
        ),
      ),
    );
  }
}
