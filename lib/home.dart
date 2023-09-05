import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App Title'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CardWidget(icon: Icons.create, label: 'New Record'),
            CardWidget(icon: Icons.visibility, label: 'View Status'),
            CardWidget(icon: Icons.attach_money, label: 'View Income'),
            CardWidget(icon: Icons.insert_chart, label: 'View Report'),
            CardWidget(icon: Icons.person, label: 'View Profile'),
            CardWidget(icon: Icons.logout, label: 'Log Out'),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String label;

  CardWidget({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          // Handle card tap here
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 60,
              color: Colors.black,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HomeActivity(),
  ));
}