class Votacao {
  final String nome;
  final int numero;
  final int votos;

  Votacao({this.nome, this.numero, this.votos});

  Map<String,dynamic> toMap(){
    return {
      'nome': nome,
      'numero': numero,
      'votos': votos
    };
  }  
}