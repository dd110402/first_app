import 'package:first_app/firstsub.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
   const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GrandNew(colors: [Color.fromARGB(210, 38, 127, 235),
          Color.fromARGB(255, 228, 91, 171)],),
      ),
    ),
  );
}