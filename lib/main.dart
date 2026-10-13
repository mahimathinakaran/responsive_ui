import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ResponsivePage(),
    );
  }
}

class ResponsivePage extends StatelessWidget {
  const ResponsivePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive UI'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return Column(
              children: const [
                Card(
                  child: ListTile(
                    title: Text('Student'),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Courses'),
                  ),
                ),
              ],
            );
          }

          return Row(
            children: const [
              Expanded(
                child: Card(
                  child: ListTile(
                    title: Text('Students'),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: ListTile(
                    title: Text('Courses'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}