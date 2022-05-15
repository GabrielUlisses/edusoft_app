import 'package:app_avaliacao_edusoft/src/censo/domain/entities/nome_censo_entity.dart';
import 'package:app_avaliacao_edusoft/src/censo/domain/errors/could_not_fetch_censo_names.dart';
import 'package:app_avaliacao_edusoft/src/censo/domain/repositories/censo_names_repository.dart';
import 'package:app_avaliacao_edusoft/src/censo/infra/datasources/censo_names_datasource.dart';
import 'package:app_avaliacao_edusoft/src/core/resources/data_state.dart';
import 'package:app_avaliacao_edusoft/src/core/resources/data_state_impl.dart';

class CensoNamesRepository implements ICensoNamesRepository{

  final ICensoNamesDatasource _datasource;

  const CensoNamesRepository(this._datasource);

  @override
  Future<List<NomeCensoEntity>> fetch([int? page]) async {
    // throw const CouldNotfetchCensoNames(message: "Ocorreu um erro inesperado");
    late IDataState _dataState;
    if(page != null){
      _dataState = await _datasource.fetchPaginated(page);
    }else{
      _dataState = await _datasource.fetch();
    }
    if(_dataState is DataState){
      if(_dataState.hasData){
        return _dataState.data;
      }
      _dataState.error!.raise();
    }
    throw UnimplementedError();
  }
}