enum SexoEnum{ masculino, feminino, naoDeclarado }

extension SexoEnumExtension on SexoEnum{
  String get label{
    switch(this){ 
      case SexoEnum.masculino:
        return 'Masculino';
      case SexoEnum.feminino:
        return 'Feminino';
      case SexoEnum.naoDeclarado:
        return 'Não Declarado';
    }
  }

  String get sigla{
    switch(this){ 
      case SexoEnum.masculino:
        return 'M';
      case SexoEnum.feminino:
        return 'F';
      case SexoEnum.naoDeclarado:
        return 'N';
    }
  }

  SexoEnum fromString(String valor){
    final _valor = valor.toLowerCase();
    if(_valor == 'f' || _valor == 'fem' || _valor == 'feminino' ){
      return SexoEnum.feminino;
    }else if(_valor == 'm' || _valor == 'masc' || _valor == 'masculino' ){
      return SexoEnum.masculino;
    }
    return SexoEnum.naoDeclarado;
  }

}
