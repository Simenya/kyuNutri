import 'package:flutter/material.dart';

class Frame extends StatelessWidget {
  const Frame({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting the height and width of the screen
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
            // margin: const EdgeInsets.symmetric(
            //   horizontal: 20,
            // ),
            height: (1 / 12) * height,
            width: width,
            color: const Color.fromRGBO(255, 255, 255, 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(width: 20.0),
                Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                ),
                SizedBox(width: 25.0),
                Text(
                  "Menu",
                  style: TextStyle(
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Reports",
                  style: TextStyle(
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                ),
                SizedBox(width: 10.0),
                Text(
                  "About",
                  style: TextStyle(
                      fontSize: 25.0,
                      decoration: TextDecoration.none,
                      color: Colors.black),
                ),
              ],
            )),
        Container(
          height: (11 / 12) * height,
          width: width,
          color: const Color.fromRGBO(255, 255, 0, 1),
          // child: const Text("Hello  there"),
        )
      ],
    );
  }
}
