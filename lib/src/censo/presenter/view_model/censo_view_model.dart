import 'package:app_avaliacao_edusoft/common/enums/sexo_enum.dart';
import 'package:app_avaliacao_edusoft/common/enums/size_enum.dart';
import 'package:app_avaliacao_edusoft/common/routes/DTO/censo_details_argument.dart';
import 'package:app_avaliacao_edusoft/common/theme/theme.dart';
import 'package:app_avaliacao_edusoft/src/censo/infra/models/nome_censo_model.dart';
import 'package:app_avaliacao_edusoft/src/censo/presenter/screens/censo_details_screen.dart';
import 'package:flutter/material.dart';

class CensoViewModel{

  final NomeCensoModel censo;

  const CensoViewModel(this.censo);

  String get title => censo.nome;

  String get subtitle => "Rank: ${censo.rank}";

  Widget listTile(BuildContext context) => Card(
    elevation: 2.0,
    child: ListTile(
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w500, color: Colors.grey.shade700)),
      subtitle: Text(subtitle),
      onTap: () => Navigator.of(context).pushNamed(CensoDetailsScreen.id, arguments: CensoDetailsArgument(this)),
    ),
  );

  Widget detailsCard(BuildContext context){
    final size = MediaQuery.of(context).size;
    return ConstrainedBox(
      constraints: resolveFrom(ScreenSizesEnum.xs.fromSize(size.width)),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.person_outline, size: 30, color: appTheme.primaryColor),
              textLabel(label: 'Nome:', text: censo.nome),
              textLabel(label: 'Rank:', text: censo.rank.toString()),
              textLabel(label: 'Frequência:', text: censo.frequencia.toString()),
              textLabel(label: 'Região:', text: censo.regiao.toString()),
              textLabel(label: 'Sexo:', text: censo.sexoEnum.label),
            ],
          ),
        ),
      ),
    );
  }

  BoxConstraints resolveFrom(ScreenSizesEnum size){
    switch(size){
      case ScreenSizesEnum.xs:
        return const BoxConstraints(maxWidth: 320);
      case ScreenSizesEnum.sm:
        return const BoxConstraints(maxWidth: 360);
      case ScreenSizesEnum.md:
        return const BoxConstraints(maxWidth: 400);
      case ScreenSizesEnum.lg:
        return const BoxConstraints(maxWidth: 400);
    }
  }

  Widget textLabel({ required String label, required String text }){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.grey.shade700)),
        Text(text, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14, color: Colors.grey.shade800)),
      ]
    );
  }
}