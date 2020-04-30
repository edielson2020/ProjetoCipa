import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LimpaRegistro extends StatefulWidget {
  LimpaRegistro({Key key}) : super(key: key);

  @override
  _LimpaRegistroState createState() => _LimpaRegistroState();
}

class _LimpaRegistroState extends State<LimpaRegistro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Limpar Registros'),
        backgroundColor: Colors.green[800],
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            SizedBox(height: 180),
            ButtonTheme(
              minWidth: 400.0,
              height: 70.0,
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(07.0),
                    side: BorderSide(
                      color: Colors.green[800],
                    )),
                onPressed: () {
                  return Alert(
                      context: context,
                      title:
                          "Tem certeza que deseja excluir todos os registros?",
                      desc: "Excluir Registros",
                      buttons: [
                        DialogButton(
                          color: Colors.green[800],
                          child: Text(
                            'sim',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        DialogButton(
                          color: Colors.green[800],
                          child: Text(
                            'não',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                      ]).show();
                },
                child: Text(
                  'Limpar Registros',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 29,
                  ),
                ),
                color: Colors.green[800],
              ),
            ),
          ])),
    );
  }
}
