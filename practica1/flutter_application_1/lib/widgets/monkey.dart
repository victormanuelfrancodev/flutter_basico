import 'package:flutter/material.dart';

class Monkey extends StatelessWidget {
  const Monkey({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topCenter,
        child: Image.asset('assets/img/monkey.png'),
      ),
    );
  }
}
