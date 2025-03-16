import 'package:deriv_demo_graph/showGraph.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      title: 'Deriv Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Showgraph()
      ),
    );
  }
}

