import 'package:flutter/material.dart';

class VisualizaResultado extends StatefulWidget {
  VisualizaResultado({Key key}) : super(key: key);

  @override
  _VisualizaResultadoState createState() => _VisualizaResultadoState();
}

class _VisualizaResultadoState extends State<VisualizaResultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Visualizar Resultado'),
        backgroundColor: Colors.green[800],
      ),

      ///body inicio
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            Text(
              'Resultado da Eleição',
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 30),
            Container(
              child: Table(
                border: TableBorder.all(),
                children: [
                  TableRow(children: [
                    Column(children: [Text('NOME')]),
                    Column(children: [Text('QTD VOTOS')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('JOÃO SILVA')]),
                    Column(children: [Text('20')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('MARCELO RAMOS')]),
                    Column(children: [Text('15')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('NÚBIA ALENCAR')]),
                    Column(children: [Text('8')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('ROGÉRIO BORGES')]),
                    Column(children: [Text('5')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('THAIS SOUZA')]),
                    Column(children: [Text('4')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('MATHEUS SILVA')]),
                    Column(children: [Text('3')]),
                  ]),
                  TableRow(children: [
                    Column(children: [Text('SILMARA NOBREGA')]),
                    Column(children: [Text('2')]),
                  ]),
                ],
              ),
            ),
          ],
        ),
      ),

      ///body final
    );
  }
}
