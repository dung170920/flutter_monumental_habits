import 'package:flutter/material.dart';
import 'package:monumental_habits_app/utils/theme.dart';

class OnboardingBtn extends StatelessWidget {
  const OnboardingBtn({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      onTap: onTap,
      child: Text(
        text,
        style: kBodyText1,
      ),
    );
  }
}
