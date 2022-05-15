import 'package:app_avaliacao_edusoft/src/censo/domain/entities/nome_censo_entity.dart';

class NomeCensoModel extends NomeCensoEntity{
  const NomeCensoModel({
    required String nome, 
    required String sexo, 
    required int frequencia, 
    required int regiao, 
    required int rank
  }) : super(nome: nome, sexo: sexo, frequencia: frequencia, regiao: regiao, rank: rank);

  NomeCensoModel.fromMap(Map<String, dynamic> map) : super(
    nome: map['nome'], 
    sexo: map['sexo'], 
    frequencia: map['freq'], 
    regiao: map['regiao'], 
    rank: map['rank']
  );

  Map<String, dynamic> toMap() => {
    'nome' : nome, 
    'sexo' : sexo, 
    'freq' : frequencia, 
    'regiao' : regiao, 
    'rank' : rank
  };

  @override
  String toString() => "NomeCensoModel(nome: $nome, sexo: $sexo, frequencia: $frequencia, regiao: $regiao, rank: $rank)";
}