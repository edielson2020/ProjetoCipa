import 'package:flutter/material.dart';

class CadastroFuncionario extends StatefulWidget {
  CadastroFuncionario({Key key}) : super(key: key);

  @override
  _CadastroFuncionarioState createState() => _CadastroFuncionarioState();
}

class _CadastroFuncionarioState extends State<CadastroFuncionario> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  final _textController1 = TextEditingController();
  //final format = Data ("dd-MM-yyyy");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Cadastro"),
          backgroundColor: Colors.green[800],
        ),
        body: Builder(builder: (BuildContext context) {
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _textController,
                    decoration: InputDecoration(
                        labelText: "Nome Completo",
                        suffixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Entre com o nome";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: _textController1,
                    decoration: InputDecoration(
                        labelText: "Seu Número",
                        suffixIcon: Icon(Icons.dvr),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        )),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Entre com Seu Número";
                      }
                      return null;
                    },
                  ),
                ),

                ///teste de imagem

                ///fim do teste

                SizedBox(height: 30),

                ButtonTheme(
                  minWidth: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(07.0),
                        side: BorderSide(color: Colors.green[800])),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Cadastro Finalizado com sucesso '),
                        ));
                      }
                    },
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    color: Colors.green[800],
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
