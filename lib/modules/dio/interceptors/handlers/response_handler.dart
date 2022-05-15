import 'package:dio/dio.dart';

void responseHandler(Response response, ResponseInterceptorHandler handler) {
  /*
  Do something with response data, if you want to reject the request with a error message,
  you can reject a `DioError` object eg: `handler.reject(dioError) 
  */
  // if(response.statusCode == 401){
  //   return handler.reject(DioError(requestOptions: response.requestOptions, error: const InvalidTokenError())); 
  // }else if(response.data['success'] == false || response.data['erro'] == true){
  //   return handler.reject(DioError(requestOptions: response.requestOptions, error: ResponseError(message: response.data['message'] ?? ''))); 
  // }
  print(response.data);
  return handler.next(response); // continue
}