import 'package:flutter/material.dart';
import 'dart:convert';

void main() {
  runApp(const Task7App());
}

class Task7App extends StatelessWidget {
  const Task7App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 7 - JSON',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const JsonDataScreen(),
    );
  }
}

class JsonDataScreen extends StatefulWidget {
  const JsonDataScreen({super.key});

  @override
  State<JsonDataScreen> createState() => _JsonDataScreenState();
}

class _JsonDataScreenState extends State<JsonDataScreen> {
  late List<dynamic> fruitsList;

  @override
  void initState() {
    super.initState();
    // Step 1: Define a String variable containing a simple JSON array
    String jsonString = '''[
      {"name": "Apple"},
      {"name": "Banana"},
      {"name": "Cherry"},
      {"name": "Date"},
      {"name": "Elderberry"},
      {"name": "Fig"},
      {"name": "Grape"},
      {"name": "Honeydew"}
    ]''';

    // Step 2: Use json.decode() to parse the string into a list
    fruitsList = json.decode(jsonString);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 7 - JSON Data')),
      // Step 3: Use ListView.builder to display the list
      body: ListView.builder(
        itemCount: fruitsList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.green.shade300,
                child: Text('${index + 1}'),
              ),
              // Display each name in a Text widget
              title: Text(
                fruitsList[index]['name'],
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              subtitle: Text('Fruit #${index + 1}'),
              trailing: const Icon(Icons.check_circle),
            ),
          );
        },
      ),
    );
  }
}
