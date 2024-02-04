import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  final String hintText;
  final Widget? suffixIcon;
  final bool? obscured;
  final FormFieldValidator<String>? validator;
  final void Function(String?)? onSubmitted;
  final TextEditingController controller;

  const MyFormField({
    super.key,
    required this.hintText,
    this.suffixIcon,
    this.obscured = false,
    this.validator,
    this.onSubmitted,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onFieldSubmitted: onSubmitted,
      obscureText: obscured!,
      validator: validator,
      onTap: () {},
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding:
            EdgeInsets.only(top: suffixIcon != null ? 9.0 : 0, left: 12),
        hintText: hintText,
        border: InputBorder.none,
        hintStyle: const TextStyle(
          color: Color.fromARGB(150, 255, 255, 255),
        ),
      ),
    );
  }
}
