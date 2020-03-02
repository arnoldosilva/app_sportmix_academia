import 'package:academia_sport_mix/constantes/colors.dart';
import 'package:academia_sport_mix/home.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  int _current = 0;

  List<Widget> telasIntro = [
    Container(
      color: c2,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'imagens/academia.svg',
              height: 250,
            ),
            Padding(padding: EdgeInsets.only(top:20)),
            Text(
              'Monitore a evolução do seu treino!',
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
    ),
    Container(
      color: c6,
      child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'imagens/calendario.svg',
                height: 250,
              ),
              Padding(padding: EdgeInsets.only(top:20)),
              Text(
                'Organize seus treinos.',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
      ),
    ),
    Container(
      color: c1,
      child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'imagens/core.svg',
                height: 250,
              ),
              Padding(padding: EdgeInsets.only(top:20)),
              Text(
                'Compartilhe com seus amigos.',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
      ),
    ),
        Container(
      color: c6,
      child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                'imagens/juntos.svg',
                height: 250,
              ),
              Padding(padding: EdgeInsets.only(top:20)),
              Text(
                'Criem metas juntos!',
                style: TextStyle(fontSize: 20, color: Colors.white),
              )
            ],
          ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.navigate_next),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (contex) => Home()));
          }),
      body: Column(children: [
        CarouselSlider(
          enableInfiniteScroll: false,
          items: telasIntro,
          autoPlay: false,
          enlargeCenterPage: false,
          //aspectRatio: 2.0,
          onPageChanged: (index) {
            setState(() {
              _current = index;
            });
          },
          height: MediaQuery.of(context).size.height,
          viewportFraction: 1.0,
        ),
      ]),
    );
  }
}
