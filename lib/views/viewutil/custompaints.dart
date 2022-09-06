import 'package:flutter/material.dart';

class ThoughtPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double height = size.height;
    double cx = size.width;
    double cy = size.height / 4;
    double radius1 = height * 1.2;
    double radius2 = height * 1;

    Paint paint = Paint()..color = Colors.white.withOpacity(0.15);

    canvas.drawCircle(Offset(cx, cy), radius1, paint);
    canvas.drawCircle(Offset(cx, cy), radius2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    Offset sp = Offset(0, height * 0.38);
    Offset p1 = Offset(width * 0.1, height * 0.5);
    Offset p2 = Offset(width * 0.3, height * 0.25);
    Offset p3 = Offset(width * 0.45, height * 0.1);
    Offset p4 = Offset(width * 0.60, height * 0.48);
    Offset p5 = Offset(width * 0.75, height * .8);
    Offset p6 = Offset(width * 1, height * 0.15);

    Path path1 = Path()
      ..moveTo(sp.dx, sp.dy)
      ..quadraticBezierTo(p1.dx, p1.dy, p2.dx, p2.dy)
      ..quadraticBezierTo(p3.dx, p3.dy, p4.dx, p4.dy)
      ..quadraticBezierTo(p5.dx, p5.dy, p6.dx, p6.dy)
      ..lineTo(width, height)
      ..lineTo(0, height)
      ..close();
    Paint paint1 = Paint()..color = Colors.white.withOpacity(0.2);

    Offset sp2 = Offset(0, height * 0.45);
    Offset p2_1 = Offset(width * 0.1, height * 0.55);
    Offset p2_2 = Offset(width * 0.23, height * 0.45);
    Offset p2_3 = Offset(width * 0.38, height * 0.35);
    Offset p2_4 = Offset(width * 0.45, height * 0.58);
    Offset p2_5 = Offset(width * 0.65, height * 1.3);
    Offset p2_6 = Offset(width * 1, height * 0.25);

    Path path2 = Path()
      ..moveTo(sp2.dx, sp2.dy)
      ..quadraticBezierTo(p2_1.dx, p2_1.dy, p2_2.dx, p2_2.dy)
      ..quadraticBezierTo(p2_3.dx, p2_3.dy, p2_4.dx, p2_4.dy)
      ..quadraticBezierTo(p2_5.dx, p2_5.dy, p2_6.dx, p2_6.dy)
      ..lineTo(width, height)
      ..lineTo(0, height)
      ..close();

    Paint paint2 = Paint()..color = Colors.white.withOpacity(0.25);

    canvas.drawPath(path1, paint1);
    canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
