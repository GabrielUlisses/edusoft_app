import 'package:app_avaliacao_edusoft/src/censo/domain/entities/nome_censo_entity.dart';
import 'package:app_avaliacao_edusoft/src/censo/domain/repositories/censo_names_repository.dart';

abstract class IUsecase<T, P>{
  const IUsecase();

  T call(P page);
}

class FetchPaginatedCensoNamesUsecase implements IUsecase<Future<List<NomeCensoEntity>>, int>{

  final ICensoNamesRepository _repository;

  const FetchPaginatedCensoNamesUsecase(this._repository);

  @override
  Future<List<NomeCensoEntity>> call(page) async => await _repository.fetch(page);
}