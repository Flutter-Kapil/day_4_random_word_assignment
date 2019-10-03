import 'dart:math';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Password(),
    ),
  );
}

class Password extends StatefulWidget {
  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  List words = Words.list;
  String randomPassword = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RandomPasswords'),
      ),
      body: Center(
        child: Text(
          '$randomPassword',
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            String z = "";
            for (int i = 0; i < 3; i++) {
              int y = Random().nextInt(Words.list.length);
              z = z + ' ' + Words.list[y];
            }
            randomPassword = z;
          });
        },
        child: Icon(Icons.refresh),
      ), // Should be PasswordGenerator()
    );
  }
}

// you are given list of words

// Create a stateful widget called `PasswordGenerator` here
