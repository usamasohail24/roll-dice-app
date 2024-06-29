import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {

  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice()
  {
    // 6 --> gives value between 0 and 5 that's why we are adding 1 in it --> 1 and 6

    var diceRoll = Random().nextInt(6) + 1; // provided by dart:math library when we roll dice it generate a random number (integer) 6 --> highest possible value of a dice

    setState(() { // set state method re-builds the ui (build method) otherwise our ui doesn't changed
      activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                //padding: const EdgeInsets.only(top: 20), // padding is done for extra spacing between dice and button
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
    );
  }
}