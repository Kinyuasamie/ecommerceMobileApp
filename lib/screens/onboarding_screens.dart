//import 'package:ecommmerce/screens/home_screen.dart';
import 'package:ecommmerce/screens/login_screen.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final introkey = GlobalKey<IntroductionScreenState>();
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );
    return IntroductionScreen(
      key: introkey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: "Shop now",
          body:
              "Hello welcome to code doctors shop the shop you get to experience your best Thank you",
          image: Image.asset(
            'images/plank1.png',
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Big Discount",
          body:
              "Hello welcome to code doctors shop the shop you get to experience your best Thank you",
          image: Image.asset(
            'images/plank2.png',
            width: 200,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Free delvery",
          body:
              "Hello welcome to code doctors shop the shop you get to experience your best Thank you",
          image: Image.asset(
            'images/plank3.png',
            width: 200,
          ),
          decoration: pageDecoration,
          footer: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LoginScreen()));
              },
              child: Text(
                'lets shop',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(55),
                  backgroundColor: Color.fromARGB(255, 230, 152, 36),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
            ),
          ),
        ),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        'Back',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 223, 95, 86),
        ),
      ),
      next: Text(
        'Next',
        style: TextStyle(
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 223, 95, 86),
        ),
      ),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(
          size: Size.square(10),
          activeSize: Size(20, 10),
          activeColor: Color.fromARGB(223, 247, 118, 95),
          color: Colors.black26,
          spacing: EdgeInsets.symmetric(horizontal: 3),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
    );
  }
}
