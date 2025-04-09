import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Text Styling Demo',
      home: TextStyleDemoPage(),
    );
  }
}

class TextStyleDemoPage extends StatelessWidget {
  const TextStyleDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Styled Text Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Large Bold Text',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Medium Italic Text',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Small Light Text',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Underlined Red Text',
              style: TextStyle(
                fontSize: 18,
                color: Colors.red,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Custom Letter Spacing',
              style: TextStyle(
                fontSize: 18,
                color: Colors.deepPurple,
                letterSpacing: 2.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
