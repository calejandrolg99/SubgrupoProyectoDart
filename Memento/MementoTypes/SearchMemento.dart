import '../Memento.dart';
import '../../Observer/Observer.dart';

class SearchMemento extends Memento {
  //ATRIBUTOS
  Observer _navigator;

  SearchMemento(this._navigator, DateTime date,
      dynamic state) //CAMBIAR DYNAMIC POR SEARCH
      : super(date, state) {}

  //GETTERS Y SETTERS
  Observer getNavigator() {
    return this._navigator;
  }

  setNavigator(Observer navigator) {
    this._navigator = navigator;
  }
}
