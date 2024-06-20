import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart'; // import for runApp

// import 'package:first_app/gradient_container.dart';
void main() {
  runApp(
   const MaterialApp(
    debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer( [Colors.deepPurple, Colors.blue]),
      ),
    ),
  );
}
