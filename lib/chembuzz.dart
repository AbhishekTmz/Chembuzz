import 'package:chembuzz/home/Home_page.dart';
import 'package:chembuzz/login/log_in.dart';
import 'package:chembuzz/onboarding/Intropage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Chembuzz extends StatelessWidget {
  const Chembuzz({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: IntroPage());
  }
}
