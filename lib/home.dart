import 'package:academia_sport_mix/telas/conta.dart';
import 'package:academia_sport_mix/telas/macros.dart';
import 'package:academia_sport_mix/telas/playlist.dart';
import 'package:academia_sport_mix/telas/treino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  List<Widget> telas = [
    Conta(),
    Treino(),
    Macros(),
    PlayList()
  ];


  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: telas[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,        
        items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: Text('Conta'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.description),
          title: Text('Treino'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.donut_small),
          title: Text('Macros'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.playlist_play),
          title: Text('PlayLista'),
        ),
      ]),
    );
  }
}
