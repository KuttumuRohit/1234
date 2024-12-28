import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ResponsiveHome(),
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive UI'),
      ),
      body: Center(
        child: screenWidth < 600
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: screenWidth * 0.8,
              height: screenHeight * 0.3,
              child: const Center(
                child: Text('Responsive Box (Small Screen)'),
              ),
            ),
          ],
        )
            : Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              width: screenWidth * 0.3,
              height: screenHeight * 0.5,
              child: const Center(
                child: Text('Responsive Box (Large Screen)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
