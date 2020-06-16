import 'package:scoped_model/scoped_model.dart';

class DadosCandidato extends Model {
  String _nomeCandidato = "";

  String get nomeCandidato {
    return _nomeCandidato;
  }

  void updateNomeCandidato(String nomeCandidato) {
    _nomeCandidato = nomeCandidato;
  }
}
