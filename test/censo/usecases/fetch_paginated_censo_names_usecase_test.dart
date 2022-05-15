
import 'package:app_avaliacao_edusoft/modules/IoC/dependency_containers.dart' as kiwi;
import 'package:app_avaliacao_edusoft/src/censo/domain/usecases/fetch_paginated_censo_names_usecase.dart';
import 'package:app_avaliacao_edusoft/src/censo/infra/models/nome_censo_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async{
  await kiwi.setUp();

  test('basic test on fetch_paginated_censo_names_usecase execution', () async {
      final _usecase = kiwi.container.resolve<FetchPaginatedCensoNamesUsecase>();
      final _data = await _usecase(0);
      
      expect(_data is List<NomeCensoModel>, true);
      expect(_data.isNotEmpty, true);
  });
}