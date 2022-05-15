abstract class ICensoViewModelState{
  const ICensoViewModelState();
}

/* The default and initial State */
class DefaultCensoViewModelState extends ICensoViewModelState{
  const DefaultCensoViewModelState();
}

/* When something is Loading */
class LoadingCensoViewModelState extends ICensoViewModelState{
  const LoadingCensoViewModelState();
}

/* With loaded data State */
class WithDataCensoViewModelState extends ICensoViewModelState{
  const WithDataCensoViewModelState();
}

/* When an Error occurrs */
class WithErrorCensoViewModelState extends ICensoViewModelState{
  const WithErrorCensoViewModelState();
}