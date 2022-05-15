import 'package:app_avaliacao_edusoft/src/core/errors/error.dart';

import 'data_state.dart';

class DataSuccess<T> extends IDataState<T>{
  /*  */
  const DataSuccess(T data) : super(data: data, status: DataStatus.success);
}

class DataFailed<T extends IError> extends IDataState<T>{
  /*  */
  const DataFailed(T error) : super(error: error, status: DataStatus.failed);
}

class DataState<T> extends IDataState<T>{
  const DataState({ IError? error, T? data, required DataStatus status}) : super(error: error, data:data, status: status);

  /* Built from an error */
  const DataState.fromError({required IError error}) : super(error: error, status: DataStatus.failed);

  /* Built from data */
  const DataState.fromData({required T data}) : super(data: data, status: DataStatus.success);

  bool get hasData => data != null;

  bool get hasError => error != null;

  bool get isError => status == DataStatus.failed;

  bool get isData => status == DataStatus.success;
}

