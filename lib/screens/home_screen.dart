import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(title: Text('HomeScreen'), elevation: 50.0),
      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Instalación'),
            SizedBox(width: 50.0),
            Text('Flutter'),
            Text('y'),
            Text('Git'),
          ],
        ),
      ),
    );
  }
}
