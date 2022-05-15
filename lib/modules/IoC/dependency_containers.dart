
import 'package:app_avaliacao_edusoft/common/context/global_context.dart';
import 'package:app_avaliacao_edusoft/modules/dio/dio.dart';
import 'package:app_avaliacao_edusoft/src/censo/data/network/api/censo_names_api_datasource.dart';
import 'package:app_avaliacao_edusoft/src/censo/domain/repositories/censo_names_repository.dart';
import 'package:app_avaliacao_edusoft/src/censo/domain/usecases/fetch_censo_names_usecase.dart';
import 'package:app_avaliacao_edusoft/src/censo/domain/usecases/fetch_paginated_censo_names_usecase.dart';
import 'package:app_avaliacao_edusoft/src/censo/infra/datasources/censo_names_datasource.dart';
import 'package:app_avaliacao_edusoft/src/censo/infra/repositories/censo_names_repository.dart';
import 'package:dio/dio.dart';
import 'package:kiwi/kiwi.dart';

final KiwiContainer container = KiwiContainer();

Future<void> setUp() async {
  final _dio = NetworkModule(Dio()).dio;

  // -- MODULES :--
  container.registerInstance<GlobalContextHelper>(GlobalContextHelper());
  container.registerInstance<Dio>(_dio);
  // -- DATASOURCES :--
  container.registerInstance<ICensoNamesDatasource>(CensoNamesApiDatasource(_dio));
  // -- REPOSITORIES :--
  container.registerInstance<ICensoNamesRepository>(CensoNamesRepository(container.resolve<ICensoNamesDatasource>()));
  // -- USECASES :--
  container.registerInstance<FetchCensoNamesUsecase>(FetchCensoNamesUsecase(container.resolve<ICensoNamesRepository>()));
  container.registerInstance<FetchPaginatedCensoNamesUsecase>(FetchPaginatedCensoNamesUsecase(container.resolve<ICensoNamesRepository>()));
}