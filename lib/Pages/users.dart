import 'package:flutter/material.dart';
import 'dart:math';

String image = "assets/edible.png";
String price = "1\$";

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  final DataTableSource _data = MyData();
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
          child: Column(
            children: [
              const Text("Users",
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.amber,
                      fontFamily: "Arial")),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.add,
                        size: 30.0,
                      ))
                ],
              ),
              SingleChildScrollView(
                child: PaginatedDataTable(
                  columns: const [
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('USERNAME')),
                    DataColumn(label: Text('EMAIL')),
                    DataColumn(label: Text('CONTACT')),
                    DataColumn(label: Text('PASSWORD')),
                    DataColumn(label: Text('EDIT')),
                    DataColumn(label: Text('DELETE')),
                  ],
                  source: _data,
                  // columnSpacing: 100,
                  horizontalMargin: 40,
                  rowsPerPage: 5,
                ),
                // )
                //   ],
                // ),
              ),
            ],
          ),
        ))
      ]),
    );
  }
}

class MyData extends DataTableSource {
  final List<Map<String, dynamic>> _data = List.generate(
      200,
      (index) => {
            "id": index,
            "username": "John $index",
            "email": "johndoe@gmail.com",
            "contact": "+256700000000",
            "password": Random().nextInt(10000),
            "edit": index,
            "delete": index,
          });
  @override
  DataRow? getRow(int index) {
    // MyData implement getRow
    return DataRow(cells: [
      DataCell(Text(_data[index]['id'].toString())),
      DataCell(Text(_data[index]['username'])),
      DataCell(Text(_data[index]['email'])),
      DataCell(Text(_data[index]['contact'])),
      DataCell(Text(_data[index]['password'].toString())),
      DataCell(buildEditButton()),
      DataCell(buildDeleteButton()),
    ]);
  }

  @override
  // MyData implement isRowCountApproximate
  bool get isRowCountApproximate => false;

  @override
  // MyData implement rowCount
  int get rowCount => _data.length;

  @override
  // MyData: implement selectedRowCount
  int get selectedRowCount => 0;
  Widget buildEditButton() {
    return TextButton(
      child: const Text("Edit"),
      onPressed: () {},
    );
  }

  Widget buildDeleteButton() {
    return TextButton(
      child: const Text("Delete", style: TextStyle(color: Colors.redAccent)),
      onPressed: () {},
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
