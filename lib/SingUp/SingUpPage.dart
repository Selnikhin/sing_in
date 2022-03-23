import 'package:flutter/material.dart';
import 'package:sing_in/SingUp/HeaderUp.dart';

import 'BottomRowUp.dart';
import 'InputsUp.dart';
import 'SignUp.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignUp(), // созданный класс
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: const EdgeInsets.only(left: 25.0, top: 35.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: <Widget>[
                  HeaderUp(),
                  InputsUp(),
                  SignUp(),
                  BottomRowUp(context),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
class BackgroundSignUp extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.redAccent;
    canvas.drawPath(mainBackground, paint);

    // lightGreenAccent
    Path lightGreen = Path();
    lightGreen.lineTo(sw, 0);
    lightGreen.lineTo(sw, sh * 0.65);
    lightGreen.cubicTo(sw * 0.8, sh * 0.8, sw * 0.5, sh * 0.8, sw * 0.45, sh);
    lightGreen.lineTo(0, sh);
    lightGreen.close();
    paint.color = Colors.lightGreenAccent;
    canvas.drawPath(lightGreen, paint);

    // Grey
    Path purple = Path();
    purple.lineTo(sw, 0);
    purple.lineTo(sw, sh * 0.3);
    purple.cubicTo(sw * 0.65, sh * 0.45, sw * 0.25, sh * 0.35, 0, sh * 0.5);
    purple.close();
    paint.color = Colors.purple;
    canvas.drawPath(purple, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}