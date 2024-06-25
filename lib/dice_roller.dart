import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var activedice = "images/dice-1.png";

  void rollDice() {
    var diceroll = Random().nextInt(6) + 1;
    setState(() {
      activedice = "images/dice-$diceroll.png";
    });
    dev.log("Clicked!");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(
          activedice,
          width: 200,
        ),
        TextButton.icon(
            style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.black),
                backgroundColor: WidgetStateProperty.all(Colors.blueGrey)),
            onPressed: rollDice,
            label: const Text(
              "Roll Dice",
              style: TextStyle(fontSize: 25),
            ),
            icon: const Icon(Icons.rotate_90_degrees_ccw)),
      ],
    );
  }
}
