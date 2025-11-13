import 'package:flutter/material.dart';

void main() => runApp(const Task11App());

class Task11App extends StatelessWidget {
  const Task11App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task 11 - Image Gallery',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const ImageGalleryScreen(),
    );
  }
}

class ImageGalleryScreen extends StatelessWidget {
  const ImageGalleryScreen({super.key});

  static const List<String> imageUrls = [
    // Stock planet images (Wikimedia Commons)
    'https://upload.wikimedia.org/wikipedia/commons/9/97/The_Earth_seen_from_Apollo_17.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/0/02/OSIRIS_Mars_true_color.jpg',
    'https://upload.wikimedia.org/wikipedia/commons/e/e2/Jupiter.jpg',
  ];

  void _handleTap(BuildContext context, int index) {
    final msg = 'Image ${index + 1} tapped';
    // Print to console
    print(msg);
    // Show a SnackBar
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Task 11 - Image Gallery')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.count(
          crossAxisCount: 1,
          childAspectRatio: 16 / 9,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          children: List.generate(imageUrls.length, (index) {
            return GestureDetector(
              onTap: () => _handleTap(context, index),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, progress) {
                        if (progress == null) return child;
                        return const Center(child: CircularProgressIndicator());
                      },
                      errorBuilder: (context, error, stack) => Container(
                        color: Colors.grey.shade200,
                        child: const Center(child: Icon(Icons.broken_image, size: 48)),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      bottom: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text('Image ${index + 1}', style: const TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
