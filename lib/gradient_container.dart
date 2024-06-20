// import 'package:first_app/styled_text.dart';
import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart'; // import for runApp

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

/*
in some cases it is better to specify the data type of a variable and then initialize it later
Alignment? startAlignment;.
the "?" allows flutter to know that type alignment will be stored in this variable or it will just be null.
we use final to be restrictive using final will allow us not to override or we could use const which is like final but supplies flutter more information and the variable will be a compile time constant which is better for performance
*/

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  // const GradientContainer({key}): super(key: key); another way of doing it
  final List<Color> colors; // fina bala list fina n3uz 2 positional parameters

  // const GradientContainer.purple({super.key})
  //     : color1 = Colors.deepOrange,
  //       color2 = Colors.deepPurple;

  // final Color color1;
  // final Color color2;   we can do this

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

