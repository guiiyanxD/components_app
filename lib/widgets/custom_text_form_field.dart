import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helpText;
  final IconData? suffixIcon;
  final TextInputType? keyboradType;
  final String? initialValue;
  final Function? validator;
  final bool isPasswordFiled;


    const CustomTextFormField({
      Key? key,
      this.initialValue,
      this.keyboradType,
      this.suffixIcon,
      this.hintText,
      this.labelText,
      this.helpText,
      this.validator,
      this.isPasswordFiled = false,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboradType,
      autofocus: false,
      obscureText: isPasswordFiled,
      textCapitalization: TextCapitalization.words,
      initialValue: "",
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return value!.length < 3 ? "More than 3 characters" : null;
      },
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
      ),
    );
  }
}
