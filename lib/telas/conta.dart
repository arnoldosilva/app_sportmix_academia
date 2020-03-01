import 'package:flutter/material.dart';
import 'package:academia_sport_mix/telas/subtelas/carousel_slider.dart';

class Conta extends StatefulWidget {
  @override
  _ContaState createState() => _ContaState();
}

class _ContaState extends State<Conta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16))),
                child: Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Text(
                                'Seguidores',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '10',
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Image.asset(
                            'imagens/foto_1.png',
                            width: 200,
                            height: 200,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Seguindo',
                                  style: TextStyle(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '23',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      //MOTE
                      Text(
                        'Work Hard, Play Hard',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 15,
                        ),
                      ),
                      //NOME
                      Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 32),
                        child: Text(
                          'Arnoldo Silva'.toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'imagens/followers.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Amigos')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'imagens/group.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Seguidores')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'imagens/camera.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('Publicações')
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Image.asset(
                                  'imagens/heart.png',
                                  width: 40,
                                  height: 40,
                                ),
                                Text('curtidas')
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top:20),
                child: contacSlider                                
              )
            ],
          ),
        ),
      ),
    );
  }

  
}
