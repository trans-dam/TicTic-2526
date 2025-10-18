import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';

class MyInput extends StatelessWidget {
  const MyInput({
    super.key,
    this.formKey,
    this.keyboardType,
    this.hintText,
    this.obscureText,
    this.validator,
    this.controller,
    required this.label,
    required this.icon,
  });

  final Key? formKey;
  final String label;
  final String? hintText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool? obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      key: formKey,
      validator: validator,
      obscureText: obscureText ?? false,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: kBackgroundColor,
        label: Container(
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPaddingS,
            vertical: kVerticalPaddingXS,
          ),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.circular(kBorderRadius),
          ),
          child: Text(label, style: kLabelStyle),
        ),
        hintText: hintText,
        prefixIcon: Icon(icon),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: const BorderSide(color: kTertiaryColor, width: 3),
          gapPadding: 0,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
          borderSide: const BorderSide(color: kMainColor, width: 3),
          gapPadding: 0,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(
          vertical: kVerticalPaddingS,
          horizontal: kHorizontalPaddingS,
        ),
      ),
    );
  }
}
