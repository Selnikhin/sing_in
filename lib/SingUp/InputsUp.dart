import 'package:flutter/material.dart';

import '../Colors.dart';


InputsUp() {
  return Expanded(
    flex: 10,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
                borderSide: BorderSideColor,
            ),
            labelText: 'ФИО',
            hintText: 'Ведите ваши данные',
            labelStyle: TextColors,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide:BorderSideColor ,
              ),
              labelText: 'E-mail',
            hintText: 'Ведите  E-mail',
              labelStyle: TextColors,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSideColor,
            ),
            labelText: 'Пароль',
            hintText: 'Ведите свой пароль',
            labelStyle: TextColors,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSideColor,
            ),
            labelText: ' Повторите Пароль',
            hintText: 'Ведите свой пароль еще раз',
            labelStyle: TextColors,
          ),
        ),TextField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSideColor,
            ),
            labelText: 'Номер телефона ',
            hintText: 'Ведите номер телефона',
            labelStyle: TextColors,

          ),
          keyboardType: TextInputType.phone,
        ),
      ],
    ),
  );
}