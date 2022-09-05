import 'package:flutter/material.dart';
import 'package:monumental_habits_app/utils/validator.dart';
import 'package:monumental_habits_app/widgets/widgets.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _signUpKey = GlobalKey<FormState>();

  void onSubmit() {
    _signUpKey.currentState!.validate();
  }

  final List<FocusNode> _signUpFocusNodes = [
    FocusNode(),
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    super.initState();
    _signUpFocusNodes.forEach(
      (element) => element.addListener(() {
        setState(() {});
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: _signUpKey,
        child: Column(
          children: [
            MyTextField(
                icon: Icons.person_outline,
                fillColor: Colors.white,
                hint: 'Name',
                inputAction: TextInputAction.next,
                inputType: TextInputType.name,
                isPassword: false,
                focusNode: _signUpFocusNodes[0],
                validator: nameValidator),
            MyTextField(
                icon: Icons.mail_outline,
                fillColor: Colors.white,
                hint: 'Email',
                inputAction: TextInputAction.next,
                inputType: TextInputType.emailAddress,
                isPassword: false,
                focusNode: _signUpFocusNodes[1],
                validator: emailValidator),
            MyTextField(
              icon: Icons.lock_outline,
              fillColor: Colors.white,
              hint: 'Password',
              inputAction: TextInputAction.done,
              inputType: TextInputType.text,
              isPassword: true,
              focusNode: _signUpFocusNodes[2],
              validator: passwordValidator,
            ),
            const SizedBox(
              height: 20,
            ),
            const MyCheckbox(text: 'Keep me signed in'),
            const MyCheckbox(text: 'Email me about special pricing and more'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: MyButton(
                onPressed: onSubmit,
                text: 'Create Account',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
