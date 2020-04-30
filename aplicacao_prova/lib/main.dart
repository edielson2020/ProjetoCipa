import 'package:flutter/material.dart';
import 'package:aplicacao_prova/view/tela_principal.dart';
import 'package:aplicacao_prova/view/cadastro_fucionario.dart';
import 'package:aplicacao_prova/view/votar.dart';
import 'package:aplicacao_prova/view/visualiza_resultado.dart';
import 'package:aplicacao_prova/view/limpa_registro.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

void main(){
}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => TelaPrincipal(),
        '/telaCadastro': (context) => CadastroFuncionario(),
        '/telaVotar': (context) => Votar(),
        '/telaVisualizar': (context) => VisualizaResultado(),
        '/telaLimpar': (context) => LimpaRegistro(),
      },
    );
  }
}
