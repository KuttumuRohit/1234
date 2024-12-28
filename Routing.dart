import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Named Routes Navigation',
      initialRoute: '/', // Setting the initial route
      routes: {
        '/': (context) => Homepage(), // Main screen route
        '/second': (context) => SecondScreen(), // Second screen route
      },
    );
  }
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second'); // Navigate to second screen
          },
          child: const Text("Go to Second Page"),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
          child: const Text("Go to Home Page"),
        ),
      ),
    );
  }
}
