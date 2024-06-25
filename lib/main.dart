import 'package:flutter/material.dart';
import 'package:roll_dice/p_gradient.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PGradient(),
      ),
    ),
  );
}
