import '../settings/network.dart';
import 'package:dio/dio.dart';

var logInterceptor = LogInterceptor(
  request: NetworkSettings.logRequest,
  requestHeader: NetworkSettings.logRequestHeader,
  requestBody: NetworkSettings.logRequestBody,
  responseBody: NetworkSettings.logResponseBody,
  responseHeader: NetworkSettings.logResponseHeader,
  error: false,//NetworkSettings.dioError,
  logPrint: NetworkSettings.logPrint
);
      