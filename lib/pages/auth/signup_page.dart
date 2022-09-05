import 'package:flutter/material.dart';
import 'package:monumental_habits_app/pages/auth/signin_page.dart';
import 'package:monumental_habits_app/utils/config.dart';
import 'package:monumental_habits_app/utils/theme.dart';
import 'package:monumental_habits_app/widgets/widgets.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double height = SizeConfig.blockSizeV!;

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/signup.png"),
              SizedBox(
                height: height * 2,
              ),
              Text(
                'CREATE YOUR ACCOUNT',
                style: kTitle2,
              ),
              SizedBox(
                height: height * 2,
              ),
              const SignUpForm(),
              Padding(
                padding: const EdgeInsets.only(right: 16, left: 16, bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 3,
                        color: kSecondaryColor,
                      ),
                    ),
                    Text(
                      ' Or sign in with ',
                      style: kBodyText3,
                    ),
                    Expanded(
                      child: Divider(
                        height: 3,
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: SocialButton(
                          icon: 'assets/images/google_icon.png',
                          text: 'Google',
                          onPressed: () {}),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: SocialButton(
                          icon: 'assets/images/facebook_icon.png',
                          text: 'Facebook',
                          onPressed: () {}),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    textAlign: TextAlign.center,
                    style: kBodyText3,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Sign in',
                      textAlign: TextAlign.center,
                      style: kBodyText3.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
