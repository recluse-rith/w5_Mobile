import 'package:flutter/material.dart';

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundColor;

  
  const HobbyCard({super.key, 
    required this.title,
    required this.icon,
    this.backgroundColor = Colors.blue, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20), 
      ),
      child: Center(
        child: Row(
          children: [
            Icon(icon, color: Colors.white),
            Padding(
              padding: EdgeInsets.only(left: 20), 
            ),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(title: Text("My Hobbies")),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(
                title: "Travelling",
                icon: Icons.public,
                backgroundColor: Colors.green,
              ),
              HobbyCard(
                title: "Runnning",
                icon: Icons.directions_run,
                backgroundColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

