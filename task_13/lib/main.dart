import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const Task13App());

class Task13App extends StatelessWidget {
  const Task13App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 13 - AnimatedContainer',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const AnimatedContainerScreen(),
    );
  }
}

class AnimatedContainerScreen extends StatefulWidget {
  const AnimatedContainerScreen({super.key});

  @override
  State<AnimatedContainerScreen> createState() => _AnimatedContainerScreenState();
}

class _AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  // Step 1: width and height variables
  double _width = 100;
  double _height = 100;
  Color _color = Colors.deepOrange;
  final Random _random = Random();

  void _changeSize() {
    setState(() {
      // Step 4: change to a new random size between 80 and 240
      _width = 80 + _random.nextInt(160).toDouble();
      _height = 80 + _random.nextInt(160).toDouble();
      _color = Color.fromARGB(
        255,
        _random.nextInt(156) + 100,
        _random.nextInt(156) + 100,
        _random.nextInt(156) + 100,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 13 - AnimatedContainer')),
      // Step 2: AnimatedContainer in the body
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 8, offset: const Offset(0, 4)),
            ],
          ),
          alignment: Alignment.center,
          child: const Text(
            'Tap the button',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      // Step 3: FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: _changeSize,
        tooltip: 'Change size',
        child: const Icon(Icons.aspect_ratio),
      ),
    );
  }
}
