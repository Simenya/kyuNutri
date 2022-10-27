import 'package:flutter/material.dart';
import 'Pages/nav.dart';
import 'Pages/home.dart';
import 'Pages/menu.dart';
import 'Pages/reports.dart';
import 'Pages/about.dart';

class Frame extends StatelessWidget {
  const Frame({super.key});

  @override
  Widget build(BuildContext context) {
    const screens = [Home(), Menu(), Reports(), About()];
    var screenSize = MediaQuery.of(context).size.width;

    return Material(
      child: Stack(
        children: [
          screens[k],
          Positioned(
              top: 0.0,
              child: PreferredSize(
                  preferredSize: Size(screenSize, 50), child: const Navbar())),
        ],
      ),
    );
  }
}
