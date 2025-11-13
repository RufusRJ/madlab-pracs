import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 3 - Action Buttons',
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const ActionButtonsPage(),
    );
  }
}

class ActionButtonsPage extends StatelessWidget {
  const ActionButtonsPage({super.key});

  void _onCallPressed() {
    print('Call button pressed');
  }

  void _onMessagePressed() {
    print('Message button pressed');
  }

  void _onEmailPressed() {
    print('Email button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Action Buttons')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: _onCallPressed,
              icon: const Icon(Icons.call),
              iconSize: 40,
              color: Colors.blue,
              tooltip: 'Call',
            ),
            IconButton(
              onPressed: _onMessagePressed,
              icon: const Icon(Icons.message),
              iconSize: 40,
              color: Colors.green,
              tooltip: 'Message',
            ),
            IconButton(
              onPressed: _onEmailPressed,
              icon: const Icon(Icons.email),
              iconSize: 40,
              color: Colors.orange,
              tooltip: 'Email',
            ),
          ],
        ),
      ),
    );
  }
}
