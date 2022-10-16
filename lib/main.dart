import 'package:flutter/material.dart';
import './Sign/login.dart';
import './Sign/signup.dart';
import './Pages/home.dart';
import './Pages/about.dart';
import './Pages/reports.dart';
import './Pages/menu.dart';

void main() => runApp(MaterialApp(
        debugShowCheckedModeBanner: true,
        initialRoute: '/home',
        routes: {
          '/': (context) => const Login(),
          '/signup': (context) => const Signup(),
          '/home': (context) => const Home(),
          '/about': (context) => const About(),
          '/menu': (context) => const Menu(),
          '/report': (context) => const Reports(),
        }));
