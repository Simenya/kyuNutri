import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

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
              margin:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 40.0),
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
                        // Dropdown menu
                        DropDown(),
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

                                  color: Colors.white,
                                  // image: const DecorationImage(
                                  //     image: AssetImage("assets/first.png"),
                                  //)     fit: BoxFit.cover
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text("DAILY ANALYSIS",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontFamily: "Open Sans",
                                                  fontWeight: FontWeight.bold)),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("Meals  Served"),
                                          Text("2000"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("Sales"),
                                          Text("2400000"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("Most Ordered"),
                                          Text("Posh-Rice"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Text("Least Ordered"),
                                          Text("Mukene"),
                                        ],
                                      ),
                                    ],
                                  ),
                                )),
                            SafeArea(
                                child: GridView.count(
                              mainAxisSpacing: 20.0,
                              crossAxisCount: 1,
                              childAspectRatio: 1 / 0.75,
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.white,
                                    ),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text("SALES ANALYSIS",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontFamily: "Open Sans",
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                          Expanded(
                                              child: BarChart(BarChartData(
                                                  borderData: FlBorderData(
                                                      border: const Border(
                                                    bottom:
                                                        BorderSide(width: 1),
                                                    top: BorderSide.none,
                                                    left: BorderSide(width: 1),
                                                    right: BorderSide.none,
                                                  )),
                                                  groupsSpace: 5,
                                                  barGroups: [
                                                BarChartGroupData(
                                                    x: 1,
                                                    barRods: [
                                                      BarChartRodData(
                                                          y: 6,
                                                          width: 5,
                                                          colors: [Colors.blue])
                                                    ]),
                                                BarChartGroupData(
                                                    x: 2,
                                                    barRods: [
                                                      BarChartRodData(
                                                          y: 10,
                                                          width: 5,
                                                          colors: [Colors.blue])
                                                    ]),
                                                BarChartGroupData(
                                                    x: 3,
                                                    barRods: [
                                                      BarChartRodData(
                                                          y: 10,
                                                          width: 5,
                                                          colors: [Colors.blue])
                                                    ]),
                                                BarChartGroupData(
                                                    x: 4,
                                                    barRods: [
                                                      BarChartRodData(
                                                          y: 10,
                                                          width: 5,
                                                          colors: [Colors.blue])
                                                    ]),
                                                BarChartGroupData(
                                                    x: 5,
                                                    barRods: [
                                                      BarChartRodData(
                                                          y: 20,
                                                          width: 5,
                                                          colors: [Colors.blue])
                                                    ]),
                                              ])))
                                        ])),
                                Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text("DAILY ANALYSIS",
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontFamily: "Open Sans",
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Meal"),
                                              Text("Number Ordered"),
                                              Text("Sales"),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: const [
                                              Text("Mukene"),
                                              Text("30"),
                                              Text("200000"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )),
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
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text("CUSTOMER ANALYSIS",
                                                  style: TextStyle(
                                                      color: Colors.blue)),
                                            ],
                                          ),
                                          Expanded(
                                            child: PieChart(PieChartData(
                                                borderData:
                                                    FlBorderData(show: false),
                                                centerSpaceRadius: 10.0,
                                                startDegreeOffset: 0,
                                                sections: [
                                                  PieChartSectionData(
                                                      title: "Mukene",
                                                      value: 10,
                                                      color: Colors.amber,
                                                      radius: 50),
                                                  PieChartSectionData(
                                                      title: "pizza",
                                                      value: 20,
                                                      color: Colors.purple,
                                                      radius: 55),
                                                  PieChartSectionData(
                                                      title: "Pillawo",
                                                      value: 30,
                                                      color: Colors.green,
                                                      radius: 60)
                                                ])),
                                          ),
                                        ],
                                      )),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        color: Colors.white,
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text("SALES ANALYSIS",
                                                  style: TextStyle(
                                                      color: Colors.blue)),
                                            ],
                                          ),
                                          Expanded(
                                            child: PieChart(PieChartData(
                                                borderData:
                                                    FlBorderData(show: false),
                                                centerSpaceRadius: 10.0,
                                                startDegreeOffset: 0,
                                                sections: [
                                                  PieChartSectionData(
                                                      title: "Mukene",
                                                      value: 20000,
                                                      color: Colors.amber,
                                                      radius: 50),
                                                  PieChartSectionData(
                                                      title: "pizza",
                                                      value: 20000,
                                                      color: Colors.purple,
                                                      radius: 55),
                                                  PieChartSectionData(
                                                      title: "Pillawo",
                                                      value: 3000,
                                                      color: Colors.green,
                                                      radius: 60)
                                                ])),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  int selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        dropdownColor: Colors.amberAccent,
        value: selectedValue,
        items: const [
          // The order of arrangement matters in such a way to reduce errors
          DropdownMenuItem(
              value: 1,
              child: Text(
                'Daily',
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              )),
          DropdownMenuItem(
            value: 2,
            child: Text('Weekly',
                style: TextStyle(color: Colors.white, fontSize: 22.0)),
          ),
          DropdownMenuItem(
            value: 3,
            child: Text('Monthly',
                style: TextStyle(color: Colors.white, fontSize: 22.0)),
          ),
        ],
        onChanged: (value) {
          setState(() {
            // type casting the to integer
            selectedValue = value as int;
          });
        });
  }
}
