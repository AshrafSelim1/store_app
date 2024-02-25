import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key, this.hintText, this.onchange, this.obscure = false});
  String? hintText;
  Function(String)? onchange;
  bool? obscure;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscure!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
        return null;
      },
      onChanged: onchange,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(borderSide: BorderSide()),
        hintText: hintText,
        hintStyle: const TextStyle(),
      ),
    );
  }
}
