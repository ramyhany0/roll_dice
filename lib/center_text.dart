import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

class CenterText extends StatelessWidget {
  const CenterText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: const DiceRoller(),
    );
  }
}
