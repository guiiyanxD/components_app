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

  final String formProperty;
  final Map<String, String> formValues;


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
      required this.formProperty,
      required this.formValues,
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
      onChanged: (value) {
        formValues[formProperty] = value;
      },
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
      ),
    );
  }
}
