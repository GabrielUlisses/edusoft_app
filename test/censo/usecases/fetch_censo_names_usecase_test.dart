
import 'package:app_avaliacao_edusoft/modules/IoC/dependency_containers.dart' as kiwi;
import 'package:app_avaliacao_edusoft/src/censo/domain/usecases/fetch_censo_names_usecase.dart';
import 'package:app_avaliacao_edusoft/src/censo/infra/models/nome_censo_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async{
  await kiwi.setUp();

  test('basic test on fetch_censo_names_usecase execution', () async {
      final _usecase = kiwi.container.resolve<FetchCensoNamesUsecase>();
      final _data = await _usecase();
      expect(_data is List<NomeCensoModel>, true);
      expect(_data.isNotEmpty, true);
  });
}