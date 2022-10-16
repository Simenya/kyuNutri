import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/first.jpg"), fit: BoxFit.cover)),
        child: Center(
            child: Container(
          height: 460.0,
          width: 380.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromRGBO(200, 200, 200, 0.3),
          ),
        )));
  }
}
