import 'package:flutter/material.dart';

class Medidas {
  Widget medidas() {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('Medidas'),
            ],
          ),
          DataTable(columns: <DataColumn>[
            DataColumn(
                label: Text('Medidas'),
                numeric: false,
                onSort: (i, b) {},
                tooltip: 'Mostra as ultimas medidas cadastradas')
          ], rows: <DataRow>[]),
        ],
      ),
    );
  }
}

 