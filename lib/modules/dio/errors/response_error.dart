
import 'package:app_avaliacao_edusoft/src/core/errors/error.dart';

class ResponseError extends IError{
  const ResponseError({String message = defaultMessage, String? description}) : super(message: message, description: description);

  static const String defaultMessage = "A solicitação retornou um erro, tente novamente mais tarde.";
}