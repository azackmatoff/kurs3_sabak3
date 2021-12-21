import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kurs3_sabak3/app_constants/app_images.dart';
import 'package:kurs3_sabak3/widgets/dice_widget.dart';

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
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Row(
          children: [
            /// Bul jakshi variant emes
            // _getExpanded(),

            /// Widget menen ishtegen en jakshi variant
            DiceWidget(
              onTap: throwDice,
              image: AppImages.getDiceImage(solDice.toString()),
            ),
            DiceWidget(
              onTap: throwDice,
              image: AppImages.getDiceImage(onDice.toString()),
            ),
          ],
        ),
      ),
    );
  }

  /// bul jon gana misal
  /// metod (funksiya) menen da UI di kursa bolot
  /// birok jakshi variant dep eseptelbeyt
  Expanded _getExpanded() {
    return Expanded(
      child: GestureDetector(
        onTap: throwDice,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Image.asset(
            'assets/images/dice$solDice.png',
          ),
        ),
      ),
    );
  }
}
