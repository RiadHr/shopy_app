import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomFormField extends StatelessWidget {
  String? hint;
  String? Function(String?)? validator;
  List<TextInputFormatter>? inputFormater;
  CustomFormField({
    super.key,
    this.validator,
    this.inputFormater,
    this.hint
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        // label: Text("telephone"),
        hintText:hint
      ),
      inputFormatters: inputFormater,
      validator: validator,
    );
  }
}