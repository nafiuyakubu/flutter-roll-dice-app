import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

// In Dart (_) Makes it Private
class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();
  var currentDiceRoll = 2;
  void rollDice() {
    //The (setState) ensures the the Build is ReRun
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset(
                "assets/images/flaming-dice.png",
                width: 100,
              ),
              const Text(
                "Dice roll APP",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const Text('Tap on the Dice to roll',
                  style: TextStyle(color: Colors.white))
            ],
          ),
        ),
        Expanded(
          flex: 8,
          child: Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: rollDice,
                  child: Image.asset(
                    "assets/images/dice-$currentDiceRoll.png",
                    width: 200,
                  ),
                ),
                const SizedBox(height: 20),
                // TextButton(
                //   onPressed: rollDice,
                //   style: TextButton.styleFrom(
                //       // padding: const EdgeInsets.only(
                //       //   top: 20,
                //       // ),
                //       foregroundColor: Colors.white,
                //       backgroundColor: Colors.black,
                //       textStyle: const TextStyle(fontSize: 28)),
                //   child: const Text('Ckick to Roll Dice'),
                // ),
                const SizedBox(height: 140),
              ],
            ),
          ),
        )
      ],
    );
  }
}
