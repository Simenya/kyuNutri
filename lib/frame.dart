import 'package:flutter/material.dart';
import 'Pages/nav.dart';
import 'Pages/home.dart';
import 'Pages/menu.dart';
import 'Pages/reports.dart';
import 'Pages/about.dart';

class Frame extends StatefulWidget {
  const Frame({super.key});

  @override
  State<Frame> createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  @override
  Widget build(BuildContext context) {
    const screens = [Home(), Menu(), Reports(), About()];
    var screenSize = MediaQuery.of(context).size;
    return Stack(
      children: [
        Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(screenSize.width, 60), child: const Navbar()),
        ),
        screens[3],
      ],
    );
  }
}
