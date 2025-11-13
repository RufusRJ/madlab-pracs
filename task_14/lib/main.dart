import 'package:flutter/material.dart';

void main() => runApp(const Task14App());

class Task14App extends StatelessWidget {
  const Task14App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 14 - TabBar Demo',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const TabBarRoot(),
    );
  }
}

class TabBarRoot extends StatelessWidget {
  const TabBarRoot({super.key});

  @override
  Widget build(BuildContext context) {
    // Step 1 & 2: DefaultTabController with length 2
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Task 14 - Tabs'),
          // Step 3: AppBar bottom is a TabBar with two tabs
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Chats', icon: Icon(Icons.chat)),
              Tab(text: 'Status', icon: Icon(Icons.circle_notifications)),
            ],
          ),
        ),
        // Step 4: TabBarView with two children
        body: const TabBarView(
          children: [
            Center(child: Text('Chats Screen', style: TextStyle(fontSize: 20))),
            Center(child: Text('Status Screen', style: TextStyle(fontSize: 20))),
          ],
        ),
      ),
    );
  }
}
