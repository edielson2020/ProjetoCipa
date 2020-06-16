import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  TelaPrincipal({Key key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Tela Principal'),
        ),
        body: SingleChildScrollView(
        padding: EdgeInsets.all(10),

          ///teste de texto

          ///fim texte de teste
          child: Column(
            children: <Widget>[
              SizedBox(height: 75),
              ButtonTheme(
                minWidth: 400.0,
                height: 70.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(07.0),
                      side: BorderSide(
                        color: Colors.blue,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/telaCadastro');
                  },
                  child: Text(
                    'Cadastrar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 400.0,
                height: 70.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(07.0),
                      side: BorderSide(
                        color: Colors.blue,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/telaVotar');
                  },
                  child: Text(
                    'Votar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 400.0,
                height: 70.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(07.0),
                      side: BorderSide(
                        color: Colors.blue,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/telaVisualizar');
                  },
                  child: Text(
                    'Visualizar Resultados',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 400.0,
                height: 70.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(07.0),
                      side: BorderSide(
                        color: Colors.blue,
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/telaLimpar');
                  },
                  child: Text(
                    'Limpar Registros',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                    ),
                  ),
                ),
              ),
              //botao teste

              //fim dobtao teste
            ],
          ),
        ),
      ),
    );
  }
}
