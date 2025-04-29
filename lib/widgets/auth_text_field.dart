import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hint;
  final String? label;
  final TextEditingController controller;
  final bool obscureText;

  const AuthTextField({
    required this.hint,
    this.label,
    required this.controller,
    this.obscureText = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            const Color(0xFF2A2A2A).withValues(),
            const Color(0xFF2A2A2A),
            const Color(0xFF2A2A2A),
            const Color(0xFF2A2A2A).withValues(),
          ],
          stops: const [0.0, 0.2, 0.8, 1.0],
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
            color: Colors.white54,
            fontSize: 14,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.white54,
            fontSize: 16,
          ),
          filled: false,
          contentPadding: const EdgeInsets.fromLTRB(20, 24, 20, 16),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
