import 'package:academia_sport_mix/intro.dart';
import 'package:flutter/material.dart';

import 'home.dart';

bool showIntro = true;

main(List<String> args) {
  runApp(
    MaterialApp(
      //home: Home(),
      home: showIntro ? Intro() : Home(),
      theme: ThemeData.dark(),
    ),
  );
}