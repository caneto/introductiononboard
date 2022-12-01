import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Inicio do Seu projeto", style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.lightBlue
        ),),
      ),
    );
  }
}
