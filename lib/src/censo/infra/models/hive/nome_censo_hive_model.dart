import 'package:hive/hive.dart';

import '../nome_censo_model.dart';

part 'nome_censo_hive_model.g.dart';

@HiveType(typeId: 0)
class NomeCensoHiveModel extends HiveObject{

  @HiveField(0)
  final String nome; 
  @HiveField(1)
  final String sexo; 
  @HiveField(2)
  final int frequencia; 
  @HiveField(3)
  final int regiao; 
  @HiveField(4)
  final int rank;
  
  NomeCensoHiveModel({
    required this.nome,
    required this.sexo,
    required this.frequencia,
    required this.regiao,
    required this.rank
  });

  static NomeCensoHiveModel fromModel(NomeCensoModel model) => NomeCensoHiveModel(
    nome: model.nome,
    sexo: model.sexo,
    frequencia: model.frequencia,
    regiao: model.regiao,
    rank: model.rank
  );

  NomeCensoModel toModel() => NomeCensoModel(
    nome: nome,
    sexo: sexo,
    frequencia: frequencia,
    regiao: regiao,
    rank: rank
  );

  NomeCensoHiveModel copyWith({
    String? nome,
    String? sexo,
    int? frequencia,
    int? rank,
    int? regiao
  }) => NomeCensoHiveModel(
    nome : nome ?? this.nome, 
    sexo : sexo ?? this.sexo, 
    frequencia : frequencia ?? this.frequencia, 
    rank: rank ?? this.rank,
    regiao : regiao ?? this.regiao,
  );

  @override
  String toString() => "NomeCensoHiveModel(nome: $nome, sexo: $sexo, frequencia: $frequencia, regiao: $regiao, rank: $rank)";

}