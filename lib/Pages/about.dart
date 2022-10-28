import 'package:flutter/material.dart';

// About Widget
class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(30, 100, 30, 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                        radius: 140.0,
                        backgroundColor: Colors.white24,
                        backgroundImage: AssetImage('assets/dishes-5.png')),
                    Column(children: const [
                      Text("Cafe Mgt Sys",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 40.0,
                            color: Colors.black,
                          )),
                      SizedBox(height: 10.0),
                      SizedBox(
                        height: 200.0,
                        width: 400.0,
                        child: Text(
                            "Lorem, ipsum dolor sit amet consectetur adipisicing elit. Omnis illum minima magni laudantium error, repellat dolores inventore perspiciatis dolorem blanditiis saepe, architecto eaque iure a rerum provident nostrum necessitatibus corporis.",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              color: Colors.black,
                            )),
                      ),
                    ])
                  ],
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Author",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          color: Colors.black,
                        )),
                    Text("License",
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 20.0,
                          color: Color.fromRGBO(20, 255, 10, 1),
                        )),
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}
