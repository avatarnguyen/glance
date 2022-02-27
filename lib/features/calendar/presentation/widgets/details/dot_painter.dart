import 'package:flutter/material.dart';

class DotPainter extends CustomPainter {
  final Color color;
  final double? radius;

  DotPainter(this.color, {this.radius});

  @override
  void paint(Canvas canvas, Size size) {
    final center = size / 2;
    final paint = Paint()..color = color;
    canvas.drawCircle(
      Offset(center.width, center.height),
      radius ?? 3.0,
      paint,
    );
  }

  @override
  bool shouldRepaint(DotPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(DotPainter oldDelegate) => false;
}
