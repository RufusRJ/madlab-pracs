import 'package:flutter/material.dart';

void main() {
  runApp(const Task5App());
}

class Task5App extends StatelessWidget {
  const Task5App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 5 - Fade In',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FadeInScreen(),
    );
  }
}

class FadeInScreen extends StatefulWidget {
  const FadeInScreen({super.key});

  @override
  State<FadeInScreen> createState() => _FadeInScreenState();
}

class _FadeInScreenState extends State<FadeInScreen> {
  bool _visible = false; // Step 1: initialize to false

  @override
  void initState() {
    super.initState();
    // Step 2: set visible to true after 1 second using Future.delayed
    Future.delayed(const Duration(seconds: 1), () {
      if (!mounted) return;
      setState(() {
        _visible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 5 - Fade In')),
      body: Center(
        // Step 3 & 4: use AnimatedOpacity with duration 1 second
        child: AnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(seconds: 1),
          child: Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              'Welcome',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
