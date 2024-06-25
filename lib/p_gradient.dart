import 'package:flutter/material.dart';
import 'package:roll_dice/center_text.dart';

class PGradient extends StatelessWidget {
  const PGradient({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white70,
              Colors.cyan,
            ]),
      ),
      child: const CenterText(),
    );
  }
}
