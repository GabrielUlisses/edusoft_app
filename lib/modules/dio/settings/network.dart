class NetworkSettings{
  
  static Map<String, String> headers = {'Content-Type': 'application/json; charset=utf-8'};
  static int connectTimeout = 15000;
  static int receiveTimeout = 30000;
 
  // Dio Log
  static bool logRequest = false;
  static bool logRequestBody = false;
  static bool logRequestHeader = false;
  static bool logResponseBody = false;
  static bool logResponseHeader = false;
  static bool dioError = false;
  static void Function(Object) logPrint = print;
}