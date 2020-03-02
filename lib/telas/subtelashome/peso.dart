import 'package:flutter/material.dart';

returnpeso() {
  return Container(
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              'Peso',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              '79',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Kg',
              style: TextStyle(fontSize: 12),
            )
          ],
        )
      ],
    ),
  );
}
