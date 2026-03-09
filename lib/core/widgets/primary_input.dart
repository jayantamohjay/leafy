import 'package:flutter/material.dart';
import 'package:leafy/core/themes/colors.dart';

class PrimaryInput extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  const PrimaryInput({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextField(
          controller: controller,

          decoration: InputDecoration(
            hintText: hintText,
            suffix: suffixIcon,
            fillColor: Appcolors.white,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
          obscureText: obscureText,
        ),
      ],
    );
  }
}
