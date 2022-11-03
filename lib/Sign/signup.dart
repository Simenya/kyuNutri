import 'package:flutter/material.dart';
import './login.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/first.jpg"), fit: BoxFit.cover)),
          child: Center(
              child: Container(
            height: 600.0,
            width: 500.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color.fromRGBO(50, 50, 50, 0.5),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(80, 20, 80, 20),
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Kyu ',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 180, 0, 1),
                              fontSize: 28.0,
                              fontWeight: FontWeight.w800,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          Text('Nutri ',
                              style: TextStyle(
                                color: Color.fromRGBO(250, 255, 255, 1),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                                decoration: TextDecoration.none,
                              )),
                          Text('Hub',
                              style: TextStyle(
                                color: Color.fromRGBO(20, 255, 10, 1),
                                fontSize: 28.0,
                                fontWeight: FontWeight.w800,
                                decoration: TextDecoration.none,
                              ))
                        ]),
                    const SizedBox(height: 10.0),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Email',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              )),
                          const SizedBox(height: 10.0),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.person),
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                  ),
                                ),
                              )),
                          const Text('Username',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              )),
                          const SizedBox(height: 10.0),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: TextField(
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.person),
                                    border: InputBorder.none,
                                    hintText: 'username',
                                  ),
                                ),
                              )),
                          const Text('Password',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              )),
                          const SizedBox(height: 10.0),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.lock),
                                    border: InputBorder.none,
                                    hintText: 'password',
                                  ),
                                ),
                              )),
                          const SizedBox(height: 10.0),
                          // Confirm password
                          const Text('Confirm Password',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.white,
                              )),
                          const SizedBox(height: 10.0),

                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 20.0),
                                child: TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.lock),
                                    border: InputBorder.none,
                                    hintText: 'password',
                                  ),
                                ),
                              )),
                          const SizedBox(height: 18),
                          // Submit button
                          SizedBox(
                            width: 400,
                            height: 45,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                  backgroundColor:
                                      const Color.fromRGBO(255, 180, 0, 1),
                                ),
                                onPressed: () {},
                                child: const Text('SIGN UP')),
                          ),
                          const SizedBox(height: 10),

                          // Navigation to signup
                          Row(
                            children: [
                              const Text('Already Have an Account',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.transparent,
                                    elevation: 0.0,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Login()));
                                  },
                                  child: const Text('Sign in',
                                      style: TextStyle(
                                          fontSize: 20.0,
                                          color:
                                              Color.fromRGBO(255, 180, 0, 1)))),
                            ],
                          ),
                        ])
                  ]),
            ),
          ))),
    );
  }
}
