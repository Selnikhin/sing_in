import 'package:flutter/material.dart';

Inputs() {
  return Expanded(
    flex: 4,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: const <Widget>[
        TextField(
          decoration: InputDecoration(labelText: 'Логин'),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(labelText: 'Пароль'),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ),
  );
}