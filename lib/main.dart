import 'package:flutter/material.dart';
import './Sign/login.dart';
import './Sign/signup.dart';
import 'frame.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/frame': (context) => const Frame(),
          '/': (context) => const Login(),
          '/signup': (context) => const Signup(),
        }));
