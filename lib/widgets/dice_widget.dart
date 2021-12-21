import 'package:flutter/material.dart';

/// This is a [DiceWidget] that builds
/// widget to show dices

class DiceWidget extends StatelessWidget {
  const DiceWidget({
    @required this.onTap,
    @required this.image,
    Key key,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: image,
        ),
      ),
    );
  }
}
