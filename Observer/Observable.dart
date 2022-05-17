import '../Memento/Originator.dart';
import 'Observer.dart';

abstract class Observable extends Originator{
  //CONTRATO 
  void add(List<Observer> observer);
  void notifyall();
}
