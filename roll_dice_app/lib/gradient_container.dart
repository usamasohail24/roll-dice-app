import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

// variables (data containers that store values)
// final variables means that they will never recieve a new value (never override a value)
const beginAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget 
{
  const GradientContainer({super.key, required this.colors}); // constructor
  
  final List<Color> colors; // constructor parameter
  

  @override
  Widget build(BuildContext context) { // return type of this build method is a Widget
    return Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
            colors: colors,
            begin: beginAlignment,
            end: endAlignment,  
          ),
        ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}