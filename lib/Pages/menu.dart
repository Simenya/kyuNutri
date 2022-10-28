import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
          child: Container(
        height: height - 200,
        width: width - 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromRGBO(0, 0, 0, 0.5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Expanded(
            child: GridView.count(
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              crossAxisCount: 3,
              childAspectRatio: 1 / 0.64,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ))
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
