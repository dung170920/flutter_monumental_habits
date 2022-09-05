import 'package:flutter/material.dart';
import 'package:monumental_habits_app/utils/theme.dart';
import 'package:monumental_habits_app/widgets/widgets.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _signInKey = GlobalKey<FormState>();

  void onSubmit() {}

  final List<FocusNode> _signInFocusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    super.initState();
    _signInFocusNodes.forEach((element) {
      element.addListener(() {
        setState(() {});
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: _signInKey,
        child: Column(
          children: [
            MyTextField(
              icon: Icons.email_outlined,
              fillColor: kBackgroundColor,
              hint: 'Email',
              inputAction: TextInputAction.next,
              inputType: TextInputType.emailAddress,
              isPassword: false,
              focusNode: _signInFocusNodes[0],
            ),
            MyTextField(
              icon: Icons.lock_outline,
              fillColor: kBackgroundColor,
              hint: 'Password',
              inputAction: TextInputAction.done,
              inputType: TextInputType.text,
              isPassword: true,
              focusNode: _signInFocusNodes[1],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: MyButton(
                onPressed: onSubmit,
                text: 'Login',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
