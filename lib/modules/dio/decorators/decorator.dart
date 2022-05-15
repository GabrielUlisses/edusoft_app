abstract class IDecorator<T>{
  final Function decoratee;

  const IDecorator(this.decoratee);

  Future<T> call();
}