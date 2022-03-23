import 'package:flutter/material.dart';

import 'BottomRow.dart';
import 'Header.dart';
import 'Inputs.dart';
import 'SignIn.dart';

class LoginP extends StatefulWidget {
  @override
  _LoginPState createState() => _LoginPState();
}

class _LoginPState extends State<LoginP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignIn(),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  Header(),
                  Inputs(),
                  SignIn(),
                  BottomRow(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class BackgroundSignIn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width; // переменная высота
    var sh = size.height; // переменная ширина
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(
        Rect.fromLTRB(0, 0, sw, sh)); // задаем значение нашего бакгроунда
    paint.color = Colors.blueAccent.shade100; // цвет серый, тень 100
    canvas.drawPath(mainBackground, paint);

    // Добавим в шапку lightGreenAccent цвет (lightGreenAccent)
    Path lightGreen = Path();
    lightGreen.lineTo(sw, 0);
    lightGreen.lineTo(sw, sh * 0.5);
    lightGreen.quadraticBezierTo(sw * 0.5, sh * 0.45, sw * 0.2, 0); // !!!!
    lightGreen.close(); // закрыть??
    paint.color = Colors.lightGreenAccent;
    canvas.drawPath(lightGreen, paint);

    // ДОбавим purple цвет в нашу шапку    (purple)
    Path purple = Path();
    purple.lineTo(sw, 0);
    purple.lineTo(sw, sh * 0.1);
    purple.cubicTo(sw * 0.95, sh * 0.15, sw * 0.65, sh * 0.15, sw * 0.6, sh * 0.38);
    // Параметры изгибов линий
    purple.cubicTo(sw * 0.52, sh * 0.52, sw * 0.05, sh * 0.45, 0, sh * 0.4);
    purple.close(); // закрыть??
    paint.color = Colors.purple;
    canvas.drawPath(purple, paint);  // команда для нарисования

    // ДОбавим yellowAccent цвет в нашу шапку     (yellowAccent)
    Path yellowWave = Path();
    yellowWave.lineTo(sw * 0.7, 0);
    yellowWave.cubicTo(
        sw * 0.6, sh * 0.05, sw * 0.27, sh * 0.01, sw * 0.18, sh * 0.12);
    yellowWave.quadraticBezierTo(sw * 0.12, sh * 0.2, 0, sh * 0.2);
    yellowWave.close();
    paint.color = Colors.yellowAccent;
    canvas.drawPath(yellowWave, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
