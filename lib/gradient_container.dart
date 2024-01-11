import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';

// Alignment? startAlingment;
// final startAlingment = Alignment.topLeft;
// const startAlingment = Alignment.topLeft;
// var startAlingment = Alignment.topLeft;
// final: Variable can be assigned once, determined at runtime.
// const: Variable or value is known at compile-time, immutable.

const startAlingment = Alignment.topLeft;
const endAlingment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //**** Setup Constructor & Initialize ****//
  // The key parameter in Flutter is used to uniquely identify widgets
  // it's often necessary to pass the key parameter to the parent class constructor using super.key.
  // const GradientContainer({Key}) : super(key: Key);
  // build() is used for Stateless while createState() is used for Stateless
  const GradientContainer(this.color1, this.color2, {super.key}); //Short Way

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: startAlingment,
          end: endAlingment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
