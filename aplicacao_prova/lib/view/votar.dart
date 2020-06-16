import 'package:aplicacao_prova/model/dados_candidato.dart';
import 'package:flutter/material.dart';
import 'package:aplicacao_prova/service/service_bd.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Votar extends StatefulWidget {
  Votar({Key key}) : super(key: key);

  @override
  _VotarState createState() => _VotarState();
}

class _VotarState extends State<Votar> {
  final nomeCandidatoController = TextEditingController();
  final numeroCandidatoController = TextEditingController();
  SQLiteService sqLiteService;

  @override
  void initState() {
    sqLiteService = SQLiteService();
    sqLiteService.inicializacao();
    super.initState();
  }

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Votar'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Form(
            key: _formkey,
            child: Column(children: [
              SizedBox(height: 30),
              TextFormField(
                controller: numeroCandidatoController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: "N° Candidato",
                    suffixIcon: Icon(Icons.keyboard),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Entre com N° do Candidato";
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: nomeCandidatoController,
                decoration: InputDecoration(
                    labelText: "Nome do Candidato",
                    suffixIcon: Icon(Icons.person),
                    enabled: false,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    )),
              ),
              SizedBox(height: 30),
              ListTile(
                //contentPadding: EdgeInsets.all(<some value here>),//change for side padding
                title: Row(
                  children: <Widget>[
                    Expanded(
                        child: RaisedButton(
                      onPressed: () {
                        if (numeroCandidatoController.text.isEmpty) {
                          //mostrar msg aqui depois - Informe um Candidato
                          
                          //
                          return;
                        }
                        sqLiteService.verificaRegistro(
                            int.parse(numeroCandidatoController.text));
                      },
                      child: Text("Carregar"),
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(15.0),
                    )),
                    Container(
                        width: 8.0,
                        child: Center(
                            child: MaterialButton(
                          child: Text(""),
                        ))),
                    Expanded(
                        child: RaisedButton(
                      onPressed: () {
                        if (numeroCandidatoController.text.isEmpty) {
                          ////mensagem aqui
                          return Alert(
                            context: context,
                            title: "Informe o Nº do seu canditado!",
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
                                  Navigator.pushNamed(context, '/telaVotar');
                                },
                              ),
                            ]).show();
                          ///fim mensagem

                        }
                        sqLiteService
                            .votar(int.parse(numeroCandidatoController.text));

                        return Alert(
                            context: context,
                            title: "Votação finalizada com sucesso!",
                            desc: "FIM",
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
                      },
                      child: Text("Votar"),
                      color: Colors.greenAccent[700],
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(15.0),
                    )),
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
