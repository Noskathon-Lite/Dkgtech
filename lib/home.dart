//import 'package:ambulance/homepage.dart';
import 'package:ambulance/userhomepage.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.center, // Center content vertically
              children: [
                // Title Text
                Text(
                  "Role",
                  style: TextStyle(
                    fontSize: 50, // Large font size for the title
                    fontWeight: FontWeight.bold, // Bold font style
                    color: const Color.fromARGB(
                        255, 15, 1, 17), // Black text color
                  ),
                ),

                SizedBox(height: 180),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Userhomepage()),
                    );
                    // Handle "User" button press
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent,
                    foregroundColor: Colors.blue,

                    fixedSize: Size(320, 50), // Fixed size for buttons
                  ),
                  child: Text("User",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold)), // Button text
                ),
                SizedBox(height: 45), // Add space between buttons

                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    // Button text color
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.brown,
                    fixedSize: Size(320, 50), // Fixed size for buttons
                  ),
                  child: Text(
                    "Driver",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ), // Button text
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
