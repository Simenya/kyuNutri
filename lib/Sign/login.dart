import 'package:flutter/material.dart';
import './signup.dart';
import '../frame.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/first.jpg"), fit: BoxFit.cover)),
          child: Center(
              child: Container(
            height: 460.0,
            width: 500.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color.fromRGBO(200, 200, 200, 0.3),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
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
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const Frame()));
                                },
                                child: const Text('SIGN IN')),
                          ),
                          const SizedBox(height: 10),
                          // forgot password
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                elevation: 0.0,
                              ),
                              onPressed: () {},
                              child: const Text('Forgot Password',
                                  style: TextStyle(
                                      fontSize: 20.0, color: Colors.blue))),
                          const SizedBox(height: 10),
                          // Navigation to signup
                          Row(
                            children: [
                              const Text('Don\'t have an account',
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
                                                const Signup()));
                                  },
                                  child: const Text('Sign Up',
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
