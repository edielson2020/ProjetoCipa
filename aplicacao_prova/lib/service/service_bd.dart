import 'package:aplicacao_prova/model/funcionario.dart';
import 'package:aplicacao_prova/model/dados_candidato.dart';
import 'package:aplicacao_prova/model/votacao.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SQLiteService{
  
  Future<Database> database;
  static DadosCandidato modelCandidato = DadosCandidato();

  //Inicializar o bd ou abrir o bd
  Future<void> inicializacao() async
  {    
    database = openDatabase(
      join(await getDatabasesPath(), 'votacao.db'),
      onCreate: (db, version){
        db.execute("CREATE TABLE IF NOT EXISTS funcionario (numero INTEGER PRIMARY KEY, nome TEXT, tipo INTEGER)");
        db.execute("CREATE TABLE IF NOT EXISTS votacao (numero INTEGER PRIMARY KEY, nome TEXT, votos INTEGER)");
      },      
      version: 1,
    );

    print(listVotos());
  }

  //Inserir Funcionario
  Future<void> insertFuncionario(Funcionario funcionario) async
  {
    final Database db = await this.database;
    return await db.insert('funcionario', funcionario.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);  
  }

  Future<void> limparRegistros() async
  {
    final Database db = await this.database;
    await db.delete('funcionario');
  }
  
  Future<void> verificaRegistro(int numero) async
  {
    final Database db = await this.database;

    final List<Map<String, dynamic>> retDados = await db.query(
      'funcionario',
      where: "numero = ?",
      whereArgs: [numero],
    );

    if(retDados.length > 0){
      modelCandidato.updateNomeCandidato(retDados[0]['nome']);
    }else{
      modelCandidato.updateNomeCandidato("Candidato não encontrado");
    } 

    print(modelCandidato.nomeCandidato);
  }

  Future<void> votar(int numero) async
  {
    final Database db = await this.database;

    final List<Map<String, dynamic>> retFunc = await db.query(
      'funcionario',
      where: "numero = ?",
      whereArgs: [numero],
    );    

    final List<Map<String, dynamic>> retDados = await db.query(
      'votacao',
      where: "numero = ?",
      whereArgs: [numero],
    );

    if(retDados.length == 0){
      final votosMap = Votacao(
        numero: retFunc[0]['numero'],
        nome: retFunc[0]['nome'],
        votos: 1,
      );

      return await db.insert('votacao', votosMap.toMap(), conflictAlgorithm: ConflictAlgorithm.replace);  
    }else{
      var countVotos = retDados[0]['votos'] + 1;

      final votosMap = Votacao(
        numero: retFunc[0]['numero'],
        nome: retFunc[0]['nome'],
        votos: countVotos,
      );

      return await db.update('votacao', 
        votosMap.toMap(), 
        where: "numero = ?",
        whereArgs: [numero]
      );
    }     
  }        

  //Listar as funcionario
  Future<List<Votacao>> listVotos() async{
    final Database db = await this.database;
    final List<Map<String, dynamic>> votos = await db.query('votacao');

    return List.generate(votos.length, (i) => 
    Votacao(
      numero: votos[i]['numero'],
      nome: votos[i]['nome'],
      votos: votos[i]['votos'],
    ));
  }  
}