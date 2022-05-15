import 'package:app_avaliacao_edusoft/modules/dio/errors/response_error.dart';
import 'package:app_avaliacao_edusoft/src/core/errors/error.dart';
import 'package:dio/dio.dart';

class DioErrorHandleHelper{

  // These errors will be handled in the same way.
  var timeoutSet = {
    DioErrorType.receiveTimeout,
    DioErrorType.connectTimeout,
    DioErrorType.sendTimeout,
    DioErrorType.cancel
  };

  // TODO: Define the developmentStrings for these Errors.
  IError handle(DioErrorType error){

    if(timeoutSet.contains(error)){
      return const ResponseError(message: '', description: '');
    }else if(error == DioErrorType.response){
      return const ResponseError(message: '', description: '');
    }else if(error == DioErrorType.other){
      return const ResponseError(message: '', description: '');
    }
    return const ResponseError(message: '', description: '');
  }

}