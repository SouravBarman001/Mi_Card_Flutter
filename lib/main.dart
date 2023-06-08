import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(5)+1;
      rightDiceNumber = Random().nextInt(5)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text("Let's play with Dice"),
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png',),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    changeDiceFace();
                  },
                  child: Image.asset('images/dice$rightDiceNumber.png',),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
