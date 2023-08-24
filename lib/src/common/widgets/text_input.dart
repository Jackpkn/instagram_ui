import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextInputType? inputType;
  final bool isPass;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const TextInput({
    super.key,
    required this.hintText,
    required this.labelText,
    required this.inputType,
    required this.isPass,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableInteractiveSelection: true,
      keyboardType: inputType,
      autofocus: true,
      obscureText: isPass,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        contentPadding: const EdgeInsets.all(8),
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
      ),
    );
  }
}
