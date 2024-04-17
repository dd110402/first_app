import 'dart:math';
import 'package:flutter/material.dart';
var randomizer=Random();
class DiceRoller extends StatefulWidget
{
  const DiceRoller ({super.key});
  @override
  State<DiceRoller> createState()
  {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>
{
  var currentDiceRoll=2;
  
  void rolldice()
  { 
    setState(() {
       currentDiceRoll= randomizer.nextInt(6)+1;
    });
  }
  @override 
  Widget build(context)
  {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: 
          [Image.asset('assets/img/dice-$currentDiceRoll.png',
          width: 200,
          ),
          TextButton(
            onPressed: rolldice,
            style:TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 50),
              foregroundColor:Colors.white,
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