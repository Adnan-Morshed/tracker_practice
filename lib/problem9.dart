import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Custom Card List',
      home: CardListScreen(),
    );
  }
}

class CardListScreen extends StatelessWidget {
  const CardListScreen({super.key});

  final List<Map<String, String>> cardData = const [
    {
      'image': 'https://picsum.photos/id/1011/400/200',
      'title': 'Mountains',
      'subtitle': 'Nature Scene',
      'description': 'A beautiful mountain view with clouds and trees.'
    },
    {
      'image': 'https://picsum.photos/id/1015/400/200',
      'title': 'River',
      'subtitle': 'Water Flow',
      'description': 'A calm river flowing through the forest.'
    },
    {
      'image': 'https://picsum.photos/id/1016/400/200',
      'title': 'Desert',
      'subtitle': 'Sandy Landscape',
      'description': 'An endless stretch of golden desert dunes.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Custom Card List')),
      body: ListView.builder(
        itemCount: cardData.length,
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, index) {
          final item = cardData[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: CustomAnimatedCard(
              imageUrl: item['image']!,
              title: item['title']!,
              subtitle: item['subtitle']!,
              description: item['description']!,
            ),
          );
        },
      ),
    );
  }
}

class CustomAnimatedCard extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;

  const CustomAnimatedCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  State<CustomAnimatedCard> createState() => _CustomAnimatedCardState();
}

class _CustomAnimatedCardState extends State<CustomAnimatedCard> {
  double _scale = 1.0;

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale = 0.97;
    });
  }

  void _onTapUp(TapUpDetails details) {
    setState(() {
      _scale = 1.0;
    });
  }

  void _onTapCancel() {
    setState(() {
      _scale = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: _scale,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapUp: _onTapUp,
        onTapCancel: _onTapCancel,
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(widget.imageUrl, height: 180, width: double.infinity, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Text(widget.subtitle, style: const TextStyle(fontSize: 16, color: Colors.grey)),
                    const SizedBox(height: 8),
                    Text(widget.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
