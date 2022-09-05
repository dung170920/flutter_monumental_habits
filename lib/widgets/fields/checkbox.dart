import 'package:flutter/material.dart';
import 'package:monumental_habits_app/utils/theme.dart';

class MyCheckbox extends StatefulWidget {
  const MyCheckbox({super.key, required this.text});

  final String text;

  @override
  State<MyCheckbox> createState() => _MyCheckboxState();
}

class _MyCheckboxState extends State<MyCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: kPrimaryColor,
          checkColor: kSecondaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
          value: isChecked,
        ),
        Text(
          widget.text,
          style: kBodyText3,
        )
      ],
    );
  }
}
