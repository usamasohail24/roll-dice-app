import 'package:flutter/material.dart';
import 'package:roll_dice_app/gradient_container.dart';

void main()
{
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: 
          [
            Color.fromARGB(255, 8, 62, 188), 
            Color.fromARGB(255, 3, 47, 92)
          ],
        ),
      ),
    ),
  );
}

