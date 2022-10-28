import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Getting the height and width of the screen
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Stack(children: [
      Padding(
        padding: EdgeInsets.only(left: width - width / 1.7),
        child: ClipPath(
            clipper: MyClipPath(),
            child: Container(
              color: const Color.fromRGBO(255, 180, 0, 1),
              height: height,
              width: width / 1.7,
              // ),
            )),
      ),
      Center(
        child: SizedBox(
          // color: const Color.fromRGBO(255, 255, 255, 1),
          height: height - 180,
          width: width - 200,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height: 340.0,
                      width: 550.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: const Color.fromRGBO(200, 200, 200, 0.3),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 40.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Healthy ',
                                      style: TextStyle(
                                        color: Color.fromRGBO(255, 180, 0, 1),
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w800,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Text(
                                      'Meals ',
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w800,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'for a healthy ',
                                      style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w800,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                    Text(
                                      'Life ',
                                      style: TextStyle(
                                        color: Color.fromRGBO(20, 255, 10, 1),
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w800,
                                        decoration: TextDecoration.none,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                SizedBox(
                                  height: 40.0,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                        ),
                                        backgroundColor: const Color.fromRGBO(
                                            255, 180, 0, 1),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'Create Daily Menu',
                                        style: TextStyle(fontSize: 23.0),
                                      )),
                                ),
                              ]))),
                  const CircleAvatar(
                      radius: 220.0,
                      backgroundColor: Colors.white24,
                      backgroundImage: AssetImage('assets/dishes-1.png')),
                ]),
          ),

          // ),
        ),
      )
    ]);
  }
}

class MyClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height);
    var ctrl1 = Offset(size.width / 18, 2.7 / 4 * size.height);
    var ctrl2 = Offset(size.width / 2.5, size.height / 2);
    path.quadraticBezierTo(ctrl1.dx, ctrl1.dy, ctrl2.dx, ctrl2.dy);
    var ctrl3 = Offset(2.6 / 4 * size.width, size.height / 2.4);
    var ctrl4 = Offset(size.width, 0);
    path.quadraticBezierTo(ctrl3.dx, ctrl3.dy, ctrl4.dx, ctrl4.dy);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
