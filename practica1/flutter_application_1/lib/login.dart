import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/background.dart';
import 'package:flutter_application_1/widgets/login_form.dart';
import 'package:flutter_application_1/widgets/monkey.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [const Background(), const Monkey(), const LoginForm()],
        ),
      ),
    );
  }
}
