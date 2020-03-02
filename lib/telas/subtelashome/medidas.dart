
import 'package:flutter/material.dart';

returnmedidas() {
  return Container(
    child: Column(
      children: <Widget>[
        DataTable(          
          columnSpacing: 5,
          dataRowHeight: 15,          
          columns: <DataColumn>[
          DataColumn(
            label: Text(
                'Medidas',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              numeric: false,
              onSort: (i, b) {},
              tooltip: 'Mostra as ultimas medidas cadastradas'),
          DataColumn(
            label: Text(
                'Anterior',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              numeric: true,
              onSort: (i, b) {},
              tooltip: 'Mostra os valores anteriores'),
          DataColumn(
            label: Text(
                'Atual',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              numeric: true,
              onSort: (i, b) {},
              tooltip: 'Mostra os últimos valores inseridos')
        ], rows: [
          DataRow(
            cells: [
              DataCell(Text('Bíceps')),
              DataCell(Text('data')),
              DataCell(Text('data')),
            ]),
            DataRow(
            cells: [
              DataCell(Text('Coxa')),
              DataCell(Text('data')),
              DataCell(Text('data')),
            ]),
            DataRow(
            cells: [
              DataCell(Text('Abdômen')),
              DataCell(Text('data')),
              DataCell(Text('data')),
            ]),

        ],
        ),
      ],
    ),
  );
}
