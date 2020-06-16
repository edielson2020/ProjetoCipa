import 'package:flutter/material.dart';
import 'package:aplicacao_prova/service/service_bd.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class VisualizaResultado extends StatefulWidget {
  VisualizaResultado({Key key}) : super(key: key);

  @override
  _VisualizaResultadoState createState() => _VisualizaResultadoState();
}

class _VisualizaResultadoState extends State<VisualizaResultado> {
  SQLiteService sqLiteService;
  @override
  void initState() {
    sqLiteService = SQLiteService();
    sqLiteService.inicializacao();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Visualizar Resultado'),
      ),

      ///body inicio
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
      ),
    );

    ///body final
  }
}
