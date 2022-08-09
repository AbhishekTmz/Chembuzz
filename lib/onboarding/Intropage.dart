import 'package:chembuzz/login/log_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(bottom: 80),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage = index == 2;
              });
            },
            children: [
              Container(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Chem',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Color.fromARGB(255, 90, 51, 156)),
                          ),
                          Text(
                            'BUZZ',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Welcome to Chembuzz',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 140,
                      child: Image.asset(
                        'assets/images/chem.jpg',
                        height: 140,
                        width: 140,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(20),
                        child: Column(children: [
                          const Text(
                            'Your revise buddy for Middle school grade 6 - 8 Sciences  Exams based MCQ tests for quick concept revision For Cambrigde & MYP IB.',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/red.jpg',
                                height: 35,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 200,
                                child: const Text(
                                  'Presented by RED RUBIES EDUTECH PVT . LTD.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          )
                        ])),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Chem',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Color.fromARGB(255, 90, 51, 156)),
                          ),
                          Text(
                            'BUZZ',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Fun way of Learning'),
                    const SizedBox(
                      height: 50,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 160,
                      child: Lottie.asset('assets/animations/quiz.json'),
                    )
                  ])),
              Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Column(children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Chem',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                                color: Color.fromARGB(255, 90, 51, 156)),
                          ),
                          Text(
                            'BUZZ',
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text('Test Your Knowledge'),
                    const SizedBox(
                      height: 50,
                    ),
                    Lottie.asset('assets/animations/test.json',
                        fit: BoxFit.contain)
                  ]))
            ],
          ),
        ),
        bottomSheet: isLastPage
            ? Container(
                color: Colors.teal.shade700,
                height: 60,
                width: 400,
                child: TextButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const LogIN())),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )))
            : Container(
                height: 80,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => LogIN())),
                        child: Text('SKIP')),
                    Center(
                      child: SmoothPageIndicator(
                        controller: controller,
                        count: 3,
                        effect: const WormEffect(
                            spacing: 16,
                            radius: 10,
                            dotHeight: 10,
                            dotWidth: 10),
                      ),
                    ),
                    TextButton(
                        onPressed: () => controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut),
                        child: Text('NEXT'))
                  ],
                )),
      ),
    );
  }
}
