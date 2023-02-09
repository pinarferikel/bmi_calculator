import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key? key, required this.colour, this.cardChild, this.pressHandler})
      : super(key: key);

  final Color colour;
  final Widget? cardChild;
  final VoidCallback? pressHandler;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressHandler,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
