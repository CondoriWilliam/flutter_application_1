import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  final String username;
  const HomeScreen({super.key, required this.username});  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF73AEF5),
                  Color(0xFF61A4F1),
                  Color(0xFF478DE0),
                  Color(0xFF398AE5),
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
          Center(
            child: Text('¡Bienvenido, $username!',style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}