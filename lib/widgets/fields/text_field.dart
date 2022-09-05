import 'package:flutter/material.dart';
import 'package:monumental_habits_app/utils/theme.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.hint,
    required this.icon,
    required this.fillColor,
    required this.inputType,
    required this.inputAction,
    required this.isPassword,
    required this.focusNode,
    this.validator,
  }) : super(key: key);

  final String hint;
  final IconData icon;
  final Color fillColor;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool isPassword;
  final FocusNode focusNode;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: TextFormField(
        cursorColor: kSecondaryColor,
        keyboardType: inputType,
        textInputAction: inputAction,
        obscureText: isPassword,
        style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        focusNode: focusNode,
        validator: validator,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: kInputHintStyle,
          fillColor: fillColor,
          filled: true,
          border: kInputBorder,
          enabledBorder: kInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    width: 1,
                    color: kBackgroundColor,
                  ),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Icon(
                  icon,
                  color: focusNode.hasFocus
                      ? kPrimaryColor
                      : kSecondaryColor.withOpacity(0.5),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
