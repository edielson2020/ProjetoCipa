import 'package:aplicacao_prova/model/funcionario.dart';
import 'package:flutter/material.dart';
import 'package:aplicacao_prova/service/service_bd.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CadastroFuncionario extends StatefulWidget {
  CadastroFuncionario({Key key}) : super(key: key);

  @override
  _CadastroFuncionarioState createState() => _CadastroFuncionarioState();
}

class _CadastroFuncionarioState extends State<CadastroFuncionario> {
  final nomeController = TextEditingController();
  final numeroController = TextEditingController();
  SQLiteService sqLiteService;

  final _formkey = GlobalKey<FormState>();
  //final format = Data ("dd-MM-yyyy");

  @override
  void initState() {
    sqLiteService = SQLiteService();
    sqLiteService.inicializacao();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text("Cadastro")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                SizedBox(height: 30),
                TextFormField(
                  controller: nomeController,
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
                SizedBox(height: 30),
                TextFormField(
                  controller: numeroController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Seu Número",
                      suffixIcon: Icon(Icons.keyboard),
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
                SizedBox(height: 30),
                ButtonTheme(
                  minWidth: 150.0,
                  height: 50.0,
                  child: RaisedButton(
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(07.0),
                        side: BorderSide(color: Colors.blue)),
                    onPressed: () {
                      sqLiteService.insertFuncionario(Funcionario(
                        nome: nomeController.text,
                        numero: int.parse(numeroController.text),
                      ));

                      /// mensagem
                      return Alert(
                          context: context,
                          title: "Cadastro finalizado com sucesso!",
                          desc: "Obrigado",
                          buttons: [
                            DialogButton(
                              child: Text(
                                'Ok',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/');
                              },
                            ),
                          ]).show();

                      ///
                    },
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
