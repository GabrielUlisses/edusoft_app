import 'package:app_avaliacao_edusoft/common/routes/DTO/censo_details_argument.dart';
import 'package:app_avaliacao_edusoft/src/censo/presenter/screens/censo_details_screen.dart';
import 'package:app_avaliacao_edusoft/src/censo/presenter/screens/censo_screen.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  CensoScreen.id: (BuildContext context) => const CensoScreen(),
  /* Create a argument resolver method to do the auto-redirect */
  CensoDetailsScreen.id: (BuildContext context) => ModalRoute.of(context)?.settings.arguments != null ? CensoDetailsScreen(censo: ModalRoute.of(context)!.settings.arguments as CensoDetailsArgument) : const CensoScreen()
};


// bool resolver<T>(context, route){
//   final _argument = ModalRoute.of(context)?.settings.arguments;
//   if( _argument != null){
//     if(_argument is T){
//       return true;
//     }
//   }
//   return false;
// }