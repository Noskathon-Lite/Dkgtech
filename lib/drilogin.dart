import 'package:ambulance/drihomepage.dart';

import 'package:flutter/material.dart';

class Drilogin extends StatelessWidget {
  const Drilogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: const Color.fromARGB(255, 82, 220, 255),
      ),
      backgroundColor: const Color.fromARGB(115, 165, 164, 160),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/premium-vector/blob-doodle-frame-blue-template_525160-11761.jpg?semt=ais_hybrid"), // Background image path
                fit: BoxFit.cover, // Ensure the image covers the entire screen
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 10.0,
                          color: const Color.fromARGB(137, 174, 24, 24),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 150),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 11, 3, 3),
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      prefixIcon: Icon(Icons.email,
                          color: const Color.fromARGB(255, 8, 87, 139)),
                    ),
                  ),
                  SizedBox(height: 35),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 12, 6, 6),
                          fontSize: 20,
                          fontWeight: FontWeight.w900),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      prefixIcon: Icon(Icons.lock,
                          color: const Color.fromARGB(255, 19, 117, 25)),
                    ),
                  ),
                  SizedBox(height: 90),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dridashboard()),
                      );
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                      textStyle:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                      backgroundColor: const Color.fromARGB(255, 165, 204, 92),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add forgot password logic here
                    },
                    child: Text('Forgot Password?',
                        style: TextStyle(
                            color: const Color.fromARGB(179, 229, 8, 56),
                            fontSize: 16,
                            fontWeight: FontWeight.w900)),
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
