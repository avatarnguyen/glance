import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  final Color color;

  LinePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2.0;
    const start = Offset(0, 0);
    final end = Offset(0, size.height);
    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(LinePainter oldDelegate) => false;
}
