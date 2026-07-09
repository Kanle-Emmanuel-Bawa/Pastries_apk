import "package:flutter/material.dart";
import 'homescreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: Stack(
        ///
        ///
        ///main stack
        ///
        ///
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color.fromARGB(
              255,
              211,
              214,
              216,
            ).withValues(alpha: 0.5),
            // child: Image.asset(
            //   'Assets/images/forlogin.jpg',
            //   fit: BoxFit.fitHeight,
            // ),
          ),
          // // SizedBox(height: 50),
          Positioned(
            top: 75,
            left: 28,
            child: Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 35,
                color: //Colors.black,
                    Colors.black,
              ),
            ),
          ),

          Positioned(
            top: 115,
            left: 28,
            child: Text(
              'Siblings Pasteries',
              style: TextStyle(fontSize: 23, color: Colors.blue),
            ),
          ),

          Center(
            child: Container(
              height: 430,
              width: 300,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 88, 91, 126).withAlpha(50),
              ),

              child: Stack(
                children: [
                  Positioned(
                    left: 8,
                    right: 8,
                    top: 32,
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                        ),
                        labelText: 'Email address',
                      ),
                    ),
                  ),

                  Positioned(
                    left: 8,
                    right: 8,
                    top: 108,
                    child: TextField(
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),

                  ///
                  ///
                  ///Login Button
                  ///
                  ///
                  Positioned(
                    left: 8,
                    bottom: 210,
                    child: SizedBox(
                      width: 220,
                      height: 42,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            Colors.blue,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            letterSpacing: 1.8,
                            color: Colors.white,

                            fontWeight: FontWeight(400),
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///
                  ///
                  ///Sign Up button
                  ///
                  ///
                  Positioned(
                    left: 8,
                    bottom: 155,
                    child: SizedBox(
                      width: 250,
                      height: 40,
                      child: ElevatedButton(
                        onPressed: () {},

                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            Colors.orange,
                          ),
                        ),
                        child: Text(
                          'Sign Up',

                          style: TextStyle(
                            letterSpacing: 2,
                            fontWeight: FontWeight(400),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///
                  ///
                  ///fingerPrint
                  ///
                  ///
                  Positioned(
                    left: 230,
                    right: 8,
                    top: 175,
                    bottom: 210,
                    child: Container(
                      height: 40,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.blue,

                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          onLongPress:
                          () {};
                        },

                        child: Icon(
                          Icons.fingerprint_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  ///
                  ///
                  ///terms of services
                  ///
                  Positioned(
                    bottom: 8,
                    left: 20,

                    child: Text(
                      'Terms of Services',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        decorationStyle: TextDecorationStyle.wavy,
                      ),
                    ),
                  ),

                  ///
                  ///forget password
                  ///
                  Positioned(
                    bottom: 8,
                    left: 155,
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 8,
                    left: 146,
                    child: Text(
                      '|',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
