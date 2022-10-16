import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting the height and width of the screen
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Row(mainAxisAlignment: MainAxisAlignment.end,

        // child: Center(
        children: [
          ClipPath(
              clipper: MyClipPath(),
              child: Container(
                color: const Color.fromRGBO(255, 180, 0, 1),
                height: height,
                width: width / 1.7,
                // ),
              ))
        ]);
  }
}

class MyClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height);
    // var ctrl1 = Offset(50, size.height);
    // var ctrl2 = Offset(size.width / 2, size.height);
    // path.quadraticBezierTo(ctrl1.dx, ctrl1.dy, ctrl2.dx, ctrl2.dy);
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
