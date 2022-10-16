import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/topview.jpg"), fit: BoxFit.cover)),
        child: Center(
            child: Container(
          height: 500.0,
          width: 800.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromRGBO(200, 200, 200, 0.8),
          ),
        )));
  }
}
