import 'package:flutter/material.dart';

void main() => runApp(const Task10App());

class Task10App extends StatelessWidget {
  const Task10App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 10 - Draggable Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const DraggableScreen(),
    );
  }
}

class DraggableScreen extends StatefulWidget {
  const DraggableScreen({super.key});

  @override
  State<DraggableScreen> createState() => _DraggableScreenState();
}

class _DraggableScreenState extends State<DraggableScreen> {
  bool _dropped = false;
  Color _targetColor = Colors.grey.shade300;

  @override
  Widget build(BuildContext context) {
    final draggable = Draggable<String>(
      data: 'demo',
      feedback: Opacity(
        opacity: 0.75,
        child: _buildDraggableBox(),
      ),
      childWhenDragging: Opacity(
        opacity: 0.3,
        child: _buildDraggableBox(),
      ),
      child: _buildDraggableBox(),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Task 10 - Draggable')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: draggable),
            const SizedBox(height: 48),
            // DragTarget placed below
            DragTarget<String>(
              builder: (context, candidateData, rejectedData) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: _targetColor,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: candidateData.isNotEmpty ? Colors.indigo : Colors.grey.shade400,
                      width: 2,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    _dropped ? 'Dropped!' : 'Drop here',
                    style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                );
              },
              onWillAccept: (data) => true,
              onAccept: (data) {
                setState(() {
                  _dropped = true;
                  _targetColor = Colors.green.shade300;
                });
              },
              onLeave: (data) {
                setState(() {
                  // optional: revert visual cue when leaving
                  if (!_dropped) {
                    _targetColor = Colors.grey.shade300;
                  }
                });
              },
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _dropped = false;
                  _targetColor = Colors.grey.shade300;
                });
              },
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDraggableBox() {
    return Container(
      height: 80,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.indigo.shade400,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 8, offset: const Offset(0, 4)),
        ],
      ),
      alignment: Alignment.center,
      child: const Text(
        'Drag me',
        style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
