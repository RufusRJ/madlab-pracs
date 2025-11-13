import 'package:flutter/material.dart';

void main() {
  runApp(const Task6App());
}

class Task6App extends StatelessWidget {
  const Task6App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 6 - ListView',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ListViewScreen(),
    );
  }
}

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 6 - ListView')),
      // Step 1: Use ListView.builder as the body
      body: ListView.builder(
        // Step 2: Define itemCount
        itemCount: 10,
        // Step 3 & 4: itemBuilder returns a ListTile for each item
        itemBuilder: (context, index) {
          return ListTile(
            // Step 4: Set title to "Item ${index + 1}"
            title: Text('Item ${index + 1}'),
            subtitle: Text('This is item number ${index + 1}'),
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Tapped Item ${index + 1}')),
              );
            },
          );
        },
      ),
    );
  }
}
