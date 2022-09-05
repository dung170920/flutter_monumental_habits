import 'package:flutter/material.dart';
import 'package:monumental_habits_app/utils/config.dart';
import 'package:monumental_habits_app/models/onboarding_model.dart';
import 'package:monumental_habits_app/pages/pages.dart';
import 'package:monumental_habits_app/utils/theme.dart';
import 'package:monumental_habits_app/widgets/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);
  Widget dotIndicator(index) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: const Duration(milliseconds: 300),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : kSecondaryColor,
          shape: BoxShape.circle),
    );
  }

  Future setOnboardingShowed() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool("onboardingShowed", true);
  }

  @override
  void initState() {
    super.initState();
    setOnboardingShowed();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    // double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Expanded(
                flex: 9,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: onboardingContents.length,
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemBuilder: (context, index) => Column(
                    children: [
                      SizedBox(
                        height: sizeV * 5,
                      ),
                      Text(
                        onboardingContents[index].title,
                        style: kTitle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: sizeV * 5,
                      ),
                      SizedBox(
                        height: sizeV * 45,
                        child: Image.asset(
                          onboardingContents[index].image,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: sizeV * 5,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: kBodyText1,
                          children: [
                            const TextSpan(text: 'WE CAN '),
                            TextSpan(
                                text: 'HELP YOU ',
                                style: TextStyle(color: kPrimaryColor)),
                            const TextSpan(text: 'TO BE A BETTER '),
                            const TextSpan(text: 'VERSION OF '),
                            TextSpan(
                                text: 'YOURSELF ',
                                style: TextStyle(color: kPrimaryColor)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: sizeV * 5,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    currentPage == onboardingContents.length - 1
                        ? MyButton(
                            text: 'Get Started',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInPage(),
                                ),
                              );
                            },
                          )
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              OnboardingBtn(
                                text: 'Skip',
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignInPage(),
                                    ),
                                  );
                                },
                              ),
                              Row(
                                children: List.generate(
                                  onboardingContents.length,
                                  (index) => dotIndicator(index),
                                ),
                              ),
                              OnboardingBtn(
                                text: 'Next',
                                onTap: () {
                                  _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.easeInOut);
                                },
                              ),
                            ],
                          ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
