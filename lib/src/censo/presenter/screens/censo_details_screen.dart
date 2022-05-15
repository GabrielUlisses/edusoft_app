import 'package:app_avaliacao_edusoft/common/routes/DTO/censo_details_argument.dart';
import 'package:flutter/material.dart';

class CensoDetailsScreen extends StatefulWidget {
  static const String id = 'screens/censo/details';

  final CensoDetailsArgument censo;

  const CensoDetailsScreen({ Key? key, required this.censo }) : super(key: key);

  @override
  State<CensoDetailsScreen> createState() => _CensoDetailsScreenState();
}

class _CensoDetailsScreenState extends State<CensoDetailsScreen> {

  //final CensoViewModel viewModel = CensoViewModel(CensoPresentationRepository());

  @override 
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.censo.censo.title)),
      body: Center(child: widget.censo.censo.detailsCard(context)),
    );
  }
}