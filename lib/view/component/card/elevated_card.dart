import 'package:flutter/material.dart';

class ElevatedCard extends StatelessWidget {
  const ElevatedCard({
    required this.cardHeight,
    required this.child,
    Key? key,
  }) : super(key: key);

  final double cardHeight;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 5, top: 2),
          height: cardHeight + 5,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 5, bottom: 5),
          height: cardHeight,
          child: Card(
            margin: EdgeInsets.zero,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(24),
              ),
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
