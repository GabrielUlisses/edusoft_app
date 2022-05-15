import 'package:dio/dio.dart';

void requestHandler(RequestOptions options, RequestInterceptorHandler handler) async {
  // To resolve with a custom data
  // return handler.resolve(Response(requestOptions:options,data:'fake data'));
  const String? token = 'AccessToken';
  if (token != null) {
    options.headers.putIfAbsent('Authorization', () => "Bearer $token");
  }
  return handler.next(options);
}