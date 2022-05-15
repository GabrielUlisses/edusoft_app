import 'package:app_avaliacao_edusoft/src/censo/domain/entities/nome_censo_entity.dart';
import 'package:app_avaliacao_edusoft/src/censo/infra/datasources/censo_names_datasource.dart';
import 'package:app_avaliacao_edusoft/src/censo/infra/models/nome_censo_model.dart';
import 'package:app_avaliacao_edusoft/src/core/errors/network_error.dart';
import 'package:app_avaliacao_edusoft/src/core/resources/data_state.dart';
import 'package:app_avaliacao_edusoft/src/core/resources/data_state_impl.dart';
import 'package:dio/dio.dart';

import '../constants/constants.dart';

class CensoNamesApiDatasource extends ICensoNamesDatasource{
  
  final Dio _dio;

  const CensoNamesApiDatasource(this._dio);

  @override
  Future<IDataState<List<NomeCensoEntity>>> fetch() async {
    try{
      final _response = await _dio.get(apiCensoBaseURI);
      /* The response.data will be like: [{...}, {...}, {...}] */
      List<NomeCensoModel> _data = (_response.data as List<dynamic>).map((_map) => NomeCensoModel.fromMap(_map)).toList();
      return DataState.fromData(data: _data);
    }catch(error, _stack){
      return DataState.fromError(error: NetworkError(message: "Ocorreu um erro inesperado ao tentar carregar os dados", stack: _stack, error: error));
    }
  }

  @override
  Future<IDataState<List<NomeCensoEntity>>> fetchPaginated(int page) async {
    try{
      final _response = await _dio.get(apiCensoBaseURI);
      /* The response.data will be like: [{...}, {...}, {...}] */
      List<NomeCensoModel> _data = (_response.data as List<dynamic>).map((_map) => NomeCensoModel.fromMap(_map)).toList();
      return DataState.fromData(data: _data);
    }catch(error, _stack){
      return DataState.fromError(error: NetworkError(message: "Ocorreu um erro inesperado ao tentar carregar os dados", stack: _stack, error: error));
    }
  }

}