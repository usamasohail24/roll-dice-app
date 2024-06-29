import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

final random = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final AudioPlayer audioPlayer = AudioPlayer(); // intializing audioplayer once

  var currentDiceRoll = 2;

  void rollDice() async 
  {
    await audioPlayer.play(AssetSource('rolldicesound.wav'));

    setState(() {
      currentDiceRoll = random.nextInt(6) + 1;
    });
  }

  @override
  void dispose() 
  {
    audioPlayer.dispose(); // disposing audioplayer when it is not needed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.black26,
            textStyle: const TextStyle(
              fontSize: 24,
            ),
          ),
          child: const Text(
            'Roll Dice',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
