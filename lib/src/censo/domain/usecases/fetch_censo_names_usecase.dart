import 'package:app_avaliacao_edusoft/src/censo/domain/entities/nome_censo_entity.dart';
import 'package:app_avaliacao_edusoft/src/censo/domain/repositories/censo_names_repository.dart';

abstract class IUsecase<T>{
  const IUsecase();

  T call();
}

class FetchCensoNamesUsecase implements IUsecase<Future<List<NomeCensoEntity>>>{

  final ICensoNamesRepository _repository;

  const FetchCensoNamesUsecase(this._repository);

  @override
  Future<List<NomeCensoEntity>> call() async => await _repository.fetch();
}