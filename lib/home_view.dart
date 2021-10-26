import 'dart:math';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int solDice = 1;
  int onDice = 6;

  throwDice() {
    solDice = Random().nextInt(6) + 1;
    onDice = Random().nextInt(6) + 1;
    setState(() {});

    print('solDice: $solDice and onDice: $onDice');
  }

  @override
  Widget build(BuildContext context) {
    print('build  kuruldu $solDice');
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: throwDice,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/dice$solDice.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: throwDice,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset(
                    'assets/images/dice$onDice.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
