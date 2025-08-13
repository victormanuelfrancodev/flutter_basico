import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/star.dart';

class Background extends StatefulWidget {
  const Background({super.key});

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background>
    with SingleTickerProviderStateMixin {
  List<Offset>? positions;
  late final AnimationController _ctl;

  @override
  void initState() {
    super.initState();

    _ctl = AnimationController(vsync: this, duration: Duration(seconds: 3))
      ..repeat(reverse: true);
  }

  List<Offset> _getPositions(Size size, int count) {
    final w = (size.width);
    final h = (size.height);
    return List.generate(count, (_) {
      final x = Random().nextDouble() * w;
      final y = Random().nextDouble() * h;
      return Offset(x, y);
    });
  }

  @override
  void dispose() {
    _ctl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = Size(constraints.maxWidth, constraints.maxHeight);
        if (positions == null || positions!.isEmpty) {
          positions = _getPositions(size, 20);
        }

        return AnimatedBuilder(
          animation: _ctl,
          builder: (context, child) {
            return Container(
              color: Colors.orange,
              child: Stack(
                children: [
                  for (int i = 0; i < positions!.length; i++)
                    Star(
                      left: positions![i].dx,
                      top: positions![i].dy,
                      opacity: _ctl.value,
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
