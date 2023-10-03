import 'package:flutter/material.dart';
import 'package:exemplo_projeto_flutter/src/home.dart';
import 'package:exemplo_projeto_flutter/src/o-corpo-fala/corpofala.dart';
import 'package:exemplo_projeto_flutter/src/mindset/mindset.dart';

void main() => runApp(Principal());

class Principal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/o-corpo-fala': (context) => const CorpoFala(),
        '/mindset': (context) => const Mindset(),
      },
      initialRoute: '/home',
      home: const Home(), // Use the home page from home.dart
    );
  }
}
