import 'package:app_avaliacao_edusoft/src/core/errors/error.dart';

enum DataStatus{ success, failed }

abstract class IDataState<T>{
  final T? data;
  final IError? error;
  final DataStatus status;

  const IDataState({this.data, this.error, required this.status});
}