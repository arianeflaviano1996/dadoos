import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          title: Text('Dadoos'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  @override
  State<Dadoos> createState() => _DadoosState();
}

class _DadoosState extends State<Dadoos> {
  int numerodados = 1;
  int numerodadosd = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  numerodados = Random().nextInt(6) + 1;
                   numerodadosd = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('imagens/dado$numerodados.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  numerodadosd = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('imagens/dado$numerodadosd.png'),
            ),
          )
        ],
      ),
    );
  }
}
