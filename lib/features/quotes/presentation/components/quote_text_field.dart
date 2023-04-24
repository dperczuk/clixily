import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuoteTextField extends StatelessWidget {
  const QuoteTextField({
    super.key,
    required this.controller,
    required this.validator,
    this.maxLines,
    this.hintText,
    this.keyboardType,
    this.inputFormatters,
  });

  final TextEditingController controller;
  final String? Function(String?) validator;
  final int? maxLines;
  final String? hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      autocorrect: false,
      maxLines: null,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.deepPurpleAccent, width: 2.0),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
