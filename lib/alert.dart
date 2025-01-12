import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Fill Up'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.red[100],
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Column(
                  children: [
                    Icon(
                      Icons.fire_extinguisher,
                      size: 50,
                      color: Colors.red,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'FORM FILL UP!',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              _buildDropdownField(
                  'District', ['Bara', 'Kathmandu', 'Lalitpur']),
              SizedBox(height: 10),
              _buildDropdownField(
                  'City', ['Kathmandu', 'Pokhara', 'Bhaktapur']),
              SizedBox(height: 10),
              _buildDropdownField(
                  'Tole', ['Koteshwor', 'Baneshwor', 'Lalitpur']),
              SizedBox(height: 10),
              _buildDropdownField('Route',
                  ['Koteshwor - Balkumari', 'Thapathali - Putalisadak']),
              SizedBox(height: 10),
              _buildPhoneField('Phone'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildActionButton('ALERT', Colors.red, Icons.warning),
                  _buildActionButton('CANCEL', Colors.grey, Icons.cancel),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField(String label, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          items: items.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget _buildPhoneField(String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 5),
        TextFormField(
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            hintText: 'Enter your phone number',
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton(String label, Color color, IconData icon) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onPressed: () {},
      icon: Icon(icon, color: Colors.white),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
