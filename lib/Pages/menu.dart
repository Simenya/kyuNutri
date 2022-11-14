import 'package:flutter/material.dart';

String image = "assets/edible.png";
String price = "1\$";

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

    return Material(
      child: Stack(children: [
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
          height: height - 180,
          width: width - 200,
          padding: const EdgeInsets.all(30.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: const Color.fromRGBO(0, 0, 0, 0.5),
          ),
          child: SafeArea(
            child: GridView.count(
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              crossAxisCount: 3,
              childAspectRatio: 1 / 0.64,
              children: [
                for (int k = 0; k < 6; k++) const Mealcard(),
              ],
            ),
          ),
        ))
      ]),
    );
  }
}

class Mealcard extends StatelessWidget {
  const Mealcard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: 160.0,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                // color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/edible.png"), fit: BoxFit.cover)),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Pillau"),
                Text("\$1"),
              ],
            ),
          )
        ],
      ),
    );
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
