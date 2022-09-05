import 'package:flutter/material.dart';
import 'package:monumental_habits_app/pages/pages.dart';
import 'package:monumental_habits_app/utils/config.dart';
import 'package:monumental_habits_app/utils/theme.dart';
import 'package:monumental_habits_app/widgets/widgets.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double height = SizeConfig.blockSizeV!;

    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Image.asset("assets/images/signin_bg.png"),
        ),
        Positioned(
          right: 28,
          top: 28,
          child: Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Image.asset("assets/images/help_icon.png"),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'WELCOME TO\n MONUMENTAL HABITS',
                            style: kTitle,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                SocialButton(
                                  icon: "assets/images/google_icon.png",
                                  text: 'Continue with Google',
                                  onPressed: () {},
                                ),
                                SizedBox(
                                  height: height * 2,
                                ),
                                SocialButton(
                                  icon: "assets/images/facebook_icon.png",
                                  text: 'Continue with Facebook',
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(bottom: 16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Text(
                                    'Login with email',
                                    style: kBodyText3,
                                  ),
                                  Divider(
                                    height: 30,
                                    color: kPrimaryColor.withOpacity(0.5),
                                  ),
                                  const SignInForm(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const ForgotPasswordPage(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      textAlign: TextAlign.center,
                                      style: kBodyText3.copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * 1.5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Don’t have an account? ',
                                        textAlign: TextAlign.center,
                                        style: kBodyText3,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const SignUpPage(),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Sign up',
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
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
