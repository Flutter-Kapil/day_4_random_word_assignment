import 'dart:math';

import 'package:day_4_random_word_assignment/words.dart';
import 'package:english_words/english_words.dart';
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
  var r = WordPair.random(random: Random()).asCamelCase;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RandomPasswords'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$r',
              style: TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Card(
                elevation: 2,
                color: Colors.blue,
                child: FlatButton(
//                color: Colors.blue,
                  child: Text('New Password',
                      style: TextStyle(fontSize: 25, color: Colors.white)),
                  onPressed: () {
                    generateWordPairs().take(1);
                    setState(() {
                      String z = "";
                      for (int i = 0; i < 3; i++) {
                        int y = Random().nextInt(Words.list.length);
                        z = z + ' ' + Words.list[y];
                      }
                      randomPassword = z;
                      r = WordPair.random(random: Random()).asCamelCase;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
//      floatingActionButton: FloatingActionButton(
//        onPressed: () {
//          setState(() {
//            String z = "";
//            for (int i = 0; i < 3; i++) {
//              int y = Random().nextInt(Words.list.length);
//              z = z + ' ' + Words.list[y];
//            }
//            randomPassword = z;
//          });
//        },
//        child: Icon(Icons.refresh),
//      ), // Should be PasswordGenerator()
    );
  }
}

// you are given list of words

// Create a stateful widget called `PasswordGenerator` here
