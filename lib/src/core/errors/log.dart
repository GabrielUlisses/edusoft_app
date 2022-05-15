import 'dart:developer';

import 'package:app_avaliacao_edusoft/src/core/errors/error.dart';

String _errorToLog(Object error, StackTrace _stack){
  return """---------- Error :----------\n
  $error\n
  ---------- STACK TRACE :----------\n
  $_stack""";
}

void logError(Object error, StackTrace _stack){
  if(error is IError){
    return error.log();
  }
  return log(_errorToLog(error, _stack));
}

void printError(Object error, StackTrace _stack){
  if(error is IError){
    return print(error.logMessage);
  }
  return print(_errorToLog(error, _stack));
}