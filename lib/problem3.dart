import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'ListView Demo', home: NumberedListPage());
  }
}

class NumberedListPage extends StatelessWidget {
  const NumberedListPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a list of 100 items with unique numbers
    final items = List<String>.generate(100, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(title: const Text('Numbered List')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index], style: const TextStyle(fontSize: 18)),
          );
        },
      ),
    );
  }
}
