import 'package:flutter/material.dart';

class Votar extends StatefulWidget {
  Votar({Key key}) : super(key: key);

  @override
  _VotarState createState() => _VotarState();
}

class _VotarState extends State<Votar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Votar'),
          backgroundColor: Colors.green[800],
        ),
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Column(
            children: <Widget>[
              SizedBox(height: 150),
              ButtonTheme(
                minWidth: 100.0,
                height: 70.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(07.0),
                      side: BorderSide(
                        color: Colors.green[800],
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/telaCadastro');
                  },
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                    ),
                  ),
                  color: Colors.green[800],
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 100.0,
                height: 70.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(07.0),
                      side: BorderSide(
                        color: Colors.green[800],
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/telaVotar');
                  },
                  child: Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                    ),
                  ),
                  color: Colors.green[800],
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 100.0,
                height: 70.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(07.0),
                      side: BorderSide(
                        color: Colors.green[800],
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/telaVisualizar');
                  },
                  child: Text(
                    '3',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                    ),
                  ),
                  color: Colors.green[800],
                ),
              ),
              SizedBox(height: 20),
              ButtonTheme(
                minWidth: 100.0,
                height: 70.0,
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(07.0),
                      side: BorderSide(
                        color: Colors.green[800],
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, '/telaLimpar');
                  },
                  child: Text(
                    '4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                    ),
                  ),
                  color: Colors.green[800],
                ),
              ),
              //botao teste

              //fim dobtao teste
            ],
          ),
        )

        ///inicio

        ///fim
        );
  }
}
