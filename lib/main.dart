import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceApp());
}

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  void rollDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset(
                    'assets/dice$leftDice.png',
                  ),
                ),
              ),

              Expanded(
                child: TextButton(
                  onPressed: rollDice,
                  child: Image.asset(
                    'assets/dice$rightDice.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}