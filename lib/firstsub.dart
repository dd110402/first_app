import 'package:first_app/dicerollerstatefull.dart';
import 'package:flutter/material.dart';

class GrandNew extends StatelessWidget {
  const GrandNew({super.key,required this.colors});
  final List<Color> colors;
  final start = Alignment.topRight;
  final close = Alignment.bottomLeft;
   
  @override
 
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors,
        begin: start, end: close),
      ),
      
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}