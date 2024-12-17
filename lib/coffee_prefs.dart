import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {

  int strength = 1;
  int sugars = 1;

  void increasesStrength() {
    // the logic will work only with 'setState' function
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increasesSugars() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            Text('$strength'),
            Image.asset('assets/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply
            ),
            const Expanded(child: SizedBox()),
            FilledButton(
              // to change initial button style
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white
              ),
              onPressed: increasesStrength,
              child: const Text('+'),
            ),
          ],
        ),
        Row(
          children: [
            const Text('Sugar: '),
            Text('$sugars'),
            Image.asset('assets/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply
            ),
            const Expanded(child: SizedBox()),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white
              ),
              onPressed: increasesSugars,
              child: const Text('+')
            ),
          ],
        ),
      ],
    );
  }
}
