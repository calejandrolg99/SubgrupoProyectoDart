import '../Memento/Originator.dart';
import '../Notifier/Notifier.dart';
import 'Observer.dart';

abstract class Observable extends Originator{
  //CONTRATO 
  void add(List<Observer> observer);
  void notifyall(Notifier notifier);
}
