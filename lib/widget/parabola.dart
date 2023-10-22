import 'package:flutter/material.dart';

class MyParabolaWithElasticEffect extends StatefulWidget {
  final double height;
  final double width;
  const MyParabolaWithElasticEffect(
      {super.key, required this.height, required this.width});

  @override
  State<MyParabolaWithElasticEffect> createState() =>
      _MyParabolaWithElasticEffectState();
}

class _MyParabolaWithElasticEffectState
    extends State<MyParabolaWithElasticEffect> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(widget.width, widget.height),
      painter: ParabolaPainter(),
    );
  }
}

class ParabolaPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0;

    final path = Path();

    // Define the parabola with a quadratic Bézier curve
    path.moveTo(0, size.height);
    path.quadraticBezierTo(
      size.width / 2,
      -size.height,
      size.width,
      size.height,
    );

    // Draw the path onto the canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
