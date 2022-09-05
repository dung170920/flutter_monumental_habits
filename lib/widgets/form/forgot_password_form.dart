import 'package:flutter/material.dart';
import 'package:monumental_habits_app/utils/theme.dart';
import 'package:monumental_habits_app/utils/validator.dart';
import 'package:monumental_habits_app/widgets/widgets.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({super.key});

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _forgotPassKey = GlobalKey<FormState>();

  void _onSubmit() {
    _forgotPassKey.currentState!.validate();
  }

  FocusNode focusNode1 = FocusNode();

  @override
  void initState() {
    super.initState();
    focusNode1.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _forgotPassKey,
      child: Column(
        children: [
          Text(
            'Enter your registered email below to receive password reset instruction',
            textAlign: TextAlign.center,
            style: kBodyText3,
          ),
          const SizedBox(
            height: 30,
          ),
          MyTextField(
            icon: Icons.mail_outline,
            fillColor: kBackgroundColor,
            hint: 'Email',
            inputAction: TextInputAction.done,
            inputType: TextInputType.emailAddress,
            isPassword: false,
            focusNode: focusNode1,
            validator: emailValidator,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: MyButton(
              onPressed: _onSubmit,
              text: 'Send Reset Link',
            ),
          ),
        ],
      ),
    );
  }
}
