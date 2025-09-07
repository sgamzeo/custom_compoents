import 'package:custom_components/helpers/validator_helper.dart';
import 'package:flutter/material.dart';

class FormFieldData {
  final String key;
  final FieldType fieldType;
  final String? label;
  final String? hint;
  final ValidatorType validatorType;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isPassword;
  bool obscureText;

  FormFieldData({
    required this.key,
    required this.fieldType,
    this.label,
    this.hint,
    this.validatorType = ValidatorType.none,
    TextEditingController? controller,
    FocusNode? focusNode,
  }) : controller = controller ?? TextEditingController(),
       focusNode = focusNode ?? FocusNode(),
       isPassword = fieldType == FieldType.password,
       obscureText = fieldType == FieldType.password;
}

// Generic Form State Management
