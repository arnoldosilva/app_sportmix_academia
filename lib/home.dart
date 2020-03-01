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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('WorkOut Pro'),
        actions: <Widget>[
          IconButton(
            tooltip: 'Loja',
            icon: Icon(Icons.shopping_cart),
            onPressed: () {}),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {}),
        ],
      ),

      body: Center(
        child: telas[_selectedIndex],
      ),
      floatingActionButton: FloatingActionButton(
        
        elevation: 20,
        child: Image.asset('imagens/deadlift.png'),
        onPressed: (){}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
        IconButton(
          iconSize: 50,
          icon: Icon(Icons.account_circle),
          onPressed: (){
            setState(() {
              _selectedIndex = 0;
            });
          },
        ),
        IconButton(
          iconSize: 50,
          icon: Icon(Icons.description),
            onPressed: (){
              setState(() {
              _selectedIndex = 1;
            });
            },
        ),
        
        IconButton(
          iconSize: 50,
          icon: Icon(Icons.donut_small),
            onPressed: (){
              setState(() {
              _selectedIndex = 2;
            });
            },
        ),
        IconButton(          
          iconSize: 50,
          icon: Icon(Icons.playlist_play),
            onPressed: (){
              setState(() {
              _selectedIndex = 3;
            });
            },
        )
          ],
        ),
           
      ), 
    );
  }
}
