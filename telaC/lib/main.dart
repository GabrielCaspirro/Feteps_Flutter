import 'package:flutter/material.dart';
import 'tela1.dart';
import 'tela2.dart';

void main() {
  runApp(telas());
}

class telas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FetepsWidgetTela2(), 
    );
  }
}