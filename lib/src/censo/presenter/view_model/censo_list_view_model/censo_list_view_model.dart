import 'package:app_avaliacao_edusoft/src/censo/presenter/repositories/censo_view_repository.dart';
import 'package:app_avaliacao_edusoft/src/censo/presenter/view_model/censo_list_view_model/states/censo_view_states.dart';
import 'package:app_avaliacao_edusoft/src/censo/presenter/view_model/censo_view_model.dart';
import 'package:flutter/material.dart';

class CensoListViewModel extends ValueNotifier<ICensoViewModelState>{
  CensoListViewModel([ICensoViewModelState? value]) : super(value ?? const DefaultCensoViewModelState());

  final CensoPresentationRepository _repository = CensoPresentationRepository();
  final ScrollController scroll = ScrollController();
  final GlobalKey listKey = GlobalKey();

  double offset = 0.0;
  int page = 0;

  List<CensoViewModel> data = [];

  void init(BuildContext context){
    scroll.addListener(() { 
      if(scroll.offset == scroll.position.maxScrollExtent){
        offset = scroll.offset;
        page += 1;
        showOverlay(context);
        /* When fetch is completed, wait more 2 seconds to close the circular progress Overlay */
        fetch(page).whenComplete(() => Future.delayed(const Duration(milliseconds: 400)).then((value) => hideOverlay()));
      }
    });
  }

  void showOverlay(BuildContext context) => Overlay.of(context)?.insert(entry);

  void hideOverlay() => entry.remove();

  Future<void> fetch([int? page]) async {
    emit(const LoadingCensoViewModelState());
    try{
      if(page == null){
        data = await _repository.fetch();
      }else{
        data += await _repository.fetchPaginated(page);
      }
      emit(const WithDataCensoViewModelState());
    }catch(error, _stack){
      emit(const WithErrorCensoViewModelState());
    }
  }

  void emit(ICensoViewModelState state) => value = state;

  Widget listView(BuildContext context) => ListView.builder(
    key: listKey,
    controller: scroll,
    itemCount: data.length,
    itemBuilder: (context, index) => data[index].listTile(context),
  );

  final OverlayEntry entry = OverlayEntry(
    builder: (context) => const Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox( 
        height: 110, 
        child: Center(
          child: SizedBox(height: 90, width: 100, 
            child: Card(
              color: Colors.white24,
              child: Center(child: CircularProgressIndicator()),
            )
          ),
        )
      ),
    )
  );
}