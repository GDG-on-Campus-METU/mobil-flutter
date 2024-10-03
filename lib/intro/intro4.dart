import 'package:flutter/material.dart';

// https://docs.flutter.dev/ui/layout/constraints

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData( 
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Rows & Columns"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('First element of the column'),
            const Text('Second element of the column'),
            ColoredBox(
              color: Colors.blue,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('This is a row.'),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                    ),
                  ),
                  const Icon(Icons.star, size: 30, color: Colors.yellow),
                  const Icon(Icons.brightness_3,
                      size: 30, color: Colors.orange),
                ],
              ),
            ),
            const Text('Another element of the column'),
            Expanded(
                child: Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 50.0),
              color: Colors.black54,
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('This is item $index. Scroll down for more!',
                        style: const TextStyle(color: Colors.white)),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
