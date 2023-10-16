import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/home.dart';
import 'package:flutter_playground/pages/outline_text_sample.dart';

class Playground extends StatelessWidget {
  const Playground({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/outlinetext': (context) => const OutlineTextSample(),
      },
    );
  }
}
