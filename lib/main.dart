import 'package:correction_tp_flutter_al1/header.dart';
import 'package:flutter/material.dart';

import 'footer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
          headlineSmall: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<String> _choices = [
    'Coucou',
    'Football',
    'Basketball',
    'MMA',
    'Tambour',
  ];

  final List<String> _selectedChoices = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 2,
          child: Header(
            selectedChoices: _selectedChoices,
          ),
        ),
        Expanded(
          child: Footer(
            choices: _choices,
            onChoiceSelected: _onNewSelectedChoice,
            selectedChoices: _selectedChoices,
          ),
        ),
      ],
    );
  }

  void _onNewSelectedChoice(String choice) {
    setState(() {
      if (_selectedChoices.contains(choice)) {
        _selectedChoices.remove(choice);
      } else {
        _selectedChoices.add(choice);
      }
    });
  }
}
