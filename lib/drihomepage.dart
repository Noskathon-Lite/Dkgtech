import 'package:ambulance/alert.dart';
import 'package:flutter/material.dart';

class Dridashboard extends StatelessWidget {
  const Dridashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Driver DashBoard'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              DashboardButton(
                icon: Icons.route,
                label: 'Best Route',
                color: Colors.orangeAccent,
                onPressed: () {
                  // Implement action for Find Ambulance
                },
              ),
              DashboardButton(
                icon: Icons.add_alert_sharp,
                label: 'Alert Traffic Police',
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Alert()),
                  );
                },
              ),
              DashboardButton(
                icon: Icons.location_city,
                label: 'Clear traffic',
                color: Colors.blue,
                onPressed: () {
                  // Implement action for About Us
                },
              ),
              DashboardButton(
                icon: Icons.help_outline,
                label: 'Help Center',
                color: const Color.fromARGB(255, 182, 25, 193),
                onPressed: () {
                  // Implement action for Help Center
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const DashboardButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: Colors.white),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(color: Colors.white, fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
