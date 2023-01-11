import 'package:flutter/material.dart';

class ElevatedIconButton extends StatelessWidget {
  const ElevatedIconButton({
    required this.icon,
    this.onPressed,
    this.size = 38,
    Key? key,
  }) : super(key: key);

  final IconData icon;
  final VoidCallback? onPressed;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 1, left: 1),
          height: size,
          width: size,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black,
            border: Border.all(),
          ),
        ),
        GestureDetector(
          onTap: onPressed,
          child: Container(
            alignment: Alignment.center,
            height: size,
            width: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(width: 2),
            ),
            child: Center(
              child: Icon(
                icon,
                size: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
