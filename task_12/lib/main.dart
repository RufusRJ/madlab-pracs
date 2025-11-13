import 'package:flutter/material.dart';

void main() => runApp(const Task12App());

class Task12App extends StatelessWidget {
  const Task12App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 12 - Color Toggler',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ColorTogglerScreen(),
    );
  }
}

class ColorTogglerScreen extends StatefulWidget {
  const ColorTogglerScreen({super.key});

  @override
  State<ColorTogglerScreen> createState() => _ColorTogglerScreenState();
}

class _ColorTogglerScreenState extends State<ColorTogglerScreen> {
  // Step 1: background color variable
  Color _backgroundColor = Colors.white;

  void _toggleColor() {
    // Step 4: toggle between white and blue
    setState(() {
      _backgroundColor = _backgroundColor == Colors.white ? Colors.blue : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Step 2: set backgroundColor to _backgroundColor
      backgroundColor: _backgroundColor,
      appBar: AppBar(title: const Text('Task 12 - Color Toggler')),
      body: Center(
        child: Text(
          'Background is ${_backgroundColor == Colors.white ? 'White' : 'Blue'}',
          style: TextStyle(
            fontSize: 20,
            color: _backgroundColor == Colors.white ? Colors.black : Colors.white,
          ),
        ),
      ),
      // Step 3: add a FloatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleColor,
        tooltip: 'Toggle Color',
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}
