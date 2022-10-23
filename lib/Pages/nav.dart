import 'package:flutter/material.dart';

// This is the navbar of the application
var k = 0;

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  final List _hoverings = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const Text('KYU NUTR Hub'),
          // const SizedBox(width: 20),
          InkWell(
            onHover: (value) => {
              setState(() => {
                    value ? _hoverings[0] = true : _hoverings[0] = false,
                  })
            },
            child: Column(children: const [
              Text(
                'Home',
                style: TextStyle(fontSize: 20.0),
              )
            ]),
            onTap: () => setState(() => k = 0),
          ),
          const SizedBox(width: 20),
          InkWell(
            onHover: (value) => {
              setState(() => {
                    value ? _hoverings[1] = true : _hoverings[1] = false,
                  })
            },
            onTap: () => setState(() => k = 1),
            child: Column(children: const [
              Text('Menu', style: TextStyle(fontSize: 20.0))
            ]),
          ),
          const SizedBox(width: 20),
          InkWell(
            onHover: (value) => {
              setState(() => {
                    value ? _hoverings[2] = true : _hoverings[2] = false,
                  })
            },
            onTap: () => setState(() => k = 2),
            child: Column(children: const [
              Text('Reports', style: TextStyle(fontSize: 20.0))
            ]),
          ),
          const SizedBox(width: 20),
          InkWell(
            onHover: (value) => {
              setState(() => {
                    value ? _hoverings[3] = true : _hoverings[3] = false,
                  })
            },
            onTap: () => setState(() => k = 3),
            child: Column(children: const [
              Text('About', style: TextStyle(fontSize: 20.0))
            ]),
          ),
        ],
      ),
    );
  }
}
