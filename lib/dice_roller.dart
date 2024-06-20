import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
// stateful widget we do not put a build method instead we do a createState method
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState(); // we execute the construct of diceroller state
  }
}

// we have to return a value of that type which will be created using another class
// using a stateful wdiget we will always use 2 classes

// by convnetion we append State at the end and start with _

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    }); // we have to call this function since the variable when it is updated la7ala it wont just re execute the body of th build, so we have to use setState
  } // this will not work as dynamic icon the gradient container since  we were in stateless widget

  @override
  Widget build(BuildContext context) {
    return Column(
      // by default takes all the vertical space so to center it we use the Main axis
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ), INSTEAD WE CAN ADD AN EXTRA WIDGET
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}









