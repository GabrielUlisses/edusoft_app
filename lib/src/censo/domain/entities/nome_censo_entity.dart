import 'package:app_avaliacao_edusoft/common/enums/sexo_enum.dart';
import 'package:app_avaliacao_edusoft/src/core/entities/entity.dart';

class NomeCensoEntity extends IEntity{

  final String nome;
  final String sexo;
  final int frequencia;
  final int regiao;
  final int rank;

  const NomeCensoEntity({
    required this.nome,
    required this.sexo,
    required this.frequencia,
    required this.regiao,
    required this.rank
  });

  SexoEnum get sexoEnum => SexoEnum.naoDeclarado.fromString(sexo);

  @override
  /* The 'nome' attribute defines this instance, it's must be unique like an id */
  List<Object?> get props => [ nome ];

  @override
  String toString() => "NomeCensoEntity(nome: $nome, sexo: $sexo, frequencia: $frequencia, regiao: $regiao, rank: $rank)";
}