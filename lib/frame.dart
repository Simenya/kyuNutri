import 'package:flutter/material.dart';
// import 'Pages/nav.dart';
import 'Pages/home.dart';
import 'Pages/menu.dart';
import 'Pages/reports.dart';
import 'Pages/about.dart';
import 'Pages/purchases.dart';

int k = 0;

class Frame extends StatefulWidget {
  const Frame({super.key});

  @override
  State<Frame> createState() => _FrameState();
}

class _FrameState extends State<Frame> {
  @override
  Widget build(BuildContext context) {
    const screens = [Home(), Menu(), Reports(), Purchase(), About()];
    var screenSize = MediaQuery.of(context).size.width;
    final List hoverings = [true, false, false, false, false];
    return Material(
      child: Stack(
        children: [
          screens[k],
          Positioned(
              top: 0.0,
              child: PreferredSize(
                  preferredSize: Size(screenSize, 50),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100.0, vertical: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // const Text('KYU NUTR Hub'),
                        // const SizedBox(width: 20),
                        InkWell(
                          onHover: (value) => {
                            value ? hoverings[0] = true : hoverings[0] = false,
                          },
                          child: Column(children: const [
                            Text(
                              'Home',
                              style: TextStyle(fontSize: 20.0),
                            )
                          ]),
                          onTap: () {
                            setState(() {
                              k = 0;
                            });
                          },
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onHover: (value) => {
                            value ? hoverings[1] = true : hoverings[1] = false,
                          },
                          onTap: () {
                            setState(() {
                              k = 1;
                            });
                          },
                          child: Column(children: const [
                            Text('Menu', style: TextStyle(fontSize: 20.0))
                          ]),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onHover: (value) => {
                            value ? hoverings[2] = true : hoverings[2] = false,
                          },
                          onTap: () {
                            setState(() {
                              k = 2;
                            });
                          },
                          child: Column(children: const [
                            Text('Reports', style: TextStyle(fontSize: 20.0))
                          ]),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onHover: (value) => {
                            value ? hoverings[3] = true : hoverings[3] = false,
                          },
                          onTap: () {
                            setState(() {
                              k = 3;
                            });
                          },
                          child: Column(children: const [
                            Text('Purchases', style: TextStyle(fontSize: 20.0))
                          ]),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onHover: (value) => {
                            value ? hoverings[4] = true : hoverings[4] = false,
                          },
                          onTap: () {
                            setState(() {
                              k = 4;
                            });
                          },
                          child: Column(children: const [
                            Text('About', style: TextStyle(fontSize: 20.0))
                          ]),
                        ),
                      ],
                    ),
                  ))),
        ],
      ),
    );
  }
}
