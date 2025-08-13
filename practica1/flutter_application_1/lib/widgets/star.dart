import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  const Star({
    super.key,
    required this.left,
    required this.top,
    required this.opacity,
    this.size = 10,
  });
  final double left, top, size, opacity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Opacity(
        opacity: opacity,
        child: Icon(Icons.star, color: Colors.white, size: size),
      ),
    );
  }
}
