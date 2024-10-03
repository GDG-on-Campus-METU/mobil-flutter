import 'package:flutter/material.dart';

// Ctrl + Shift + P -> 'Dart: Open DevTools'

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void sayHello() {
    print('Hello, world!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is the AppBar!'),
      ),
      body: Container(
        color: Colors.black54,
        alignment: Alignment.center, // SAME AS CENTER WIDGET
        child: const Text('This is the body!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sayHello,
        child: const Icon(Icons.message),
      ),
    );
  }
}
