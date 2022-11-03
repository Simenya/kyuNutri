import 'package:flutter/material.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/topview.jpg"), fit: BoxFit.cover)),
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Center(
              child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 40.0),
                  height: 600.0,
                  width: 810.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 30.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          // Header of the card
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text("Performance",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 40.0,
                                    color: Color.fromRGBO(255, 180, 0, 1),
                                  )),
                              SizedBox(width: 30.0),
                              Text("Monthly",
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                          const SizedBox(height: 20.0),
                          // The grid view for cards
                          Expanded(
                            child: GridView.count(
                              crossAxisSpacing: 20.0,
                              crossAxisCount: 3,
                              childAspectRatio: 1 / 1.6,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      // color: Colors.white,
                                      image: const DecorationImage(
                                          image: AssetImage("assets/first.png"),
                                          fit: BoxFit.cover)),
                                ),
                                SafeArea(
                                    child: GridView.count(
                                  mainAxisSpacing: 20.0,
                                  crossAxisCount: 1,
                                  childAspectRatio: 1 / 0.75,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          // color: Colors.white,
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/second.png"),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          // color: Colors.white,
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/third.png"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ],
                                )),
                                SafeArea(
                                    child: GridView.count(
                                  mainAxisSpacing: 20.0,
                                  crossAxisCount: 1,
                                  childAspectRatio: 1 / 0.75,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          // color: Colors.white,
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/fourth.png"),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          // color: Colors.white,
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  "assets/fifth.png"),
                                              fit: BoxFit.cover)),
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          )
                        ]),
                  ))),
        ));
  }
}
