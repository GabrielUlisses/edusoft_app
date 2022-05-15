import 'package:app_avaliacao_edusoft/modules/IoC/dependency_containers.dart';
import 'package:app_avaliacao_edusoft/src/censo/domain/usecases/fetch_censo_names_usecase.dart';
import 'package:app_avaliacao_edusoft/src/censo/domain/usecases/fetch_paginated_censo_names_usecase.dart';
import 'package:app_avaliacao_edusoft/src/censo/infra/models/nome_censo_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/presenter/view_model/censo_view_model.dart';

class CensoPresentationRepository{

  final _fetchPaginatedCensoNamesUsecase = container.resolve<FetchPaginatedCensoNamesUsecase>();
  final _fetchCensoNamesUsecase = container.resolve<FetchCensoNamesUsecase>();

  Future<List<CensoViewModel>> fetch() async {
    final _data = await _fetchCensoNamesUsecase();
    return _data.map(
      (e) => CensoViewModel(e as NomeCensoModel)
    ).toList();    
  }

  Future<List<CensoViewModel>> fetchPaginated(int page) async {
    final _data = await _fetchPaginatedCensoNamesUsecase(page);
    return (_data).map(
      (e) => CensoViewModel(e as NomeCensoModel)
    ).toList();      
  }
}