import 'package:absensi_1/page/login/page_login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

Widget _buildImage(String assetName, [double width = 350]) {
  return Image.asset('assets/image/$assetName', width: width);
}

class _OnboardingViewState extends State<OnboardingView> {
  void toLogin(context) => Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (_) => PageLogin()));

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Introduction 1',
          body:
              'Page yang berisi tentang penjelasan aplikasi atau rincian kegunanan aplikasi bagi pengguna',
          image: _buildImage('image1.jpg', 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Introduction 2',
          body:
              'Page yang berisi tentang penjelasan aplikasi atau rincian kegunanan aplikasi bagi pengguna',
          image: _buildImage('image2.jpg', 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Introduction 3',
          body:
              'Page yang berisi tentang penjelasan aplikasi atau rincian kegunanan aplikasi bagi pengguna',
          image: _buildImage('image3.jpg', 200),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => toLogin(context),
      onSkip: () => toLogin(context),
      showNextButton: true,
      showDoneButton: true,
      showSkipButton: true,
      showBackButton: false,
      back: const Icon(Icons.arrow_back),
      skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color.fromARGB(255, 0, 72, 255),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
