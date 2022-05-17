import '../Memento.dart';

class SearchMemento extends Memento {
  //ATRIBUTOS
  String _navigator; //CAMBIAR STRING POR OBSERVER

  SearchMemento(this._navigator, DateTime date,
      dynamic state) //CAMBIAR DYNAMIC POR SEARCH
      : super(date, state) {}

  //GETTERS Y SETTERS
  String getNavigator() {
    //CAMBIAR STRING POR OBSERVER
    return this._navigator;
  }

  setNavigator(String navigator) {
    //CAMBIAR STRING POR OBSERVER
    this._navigator = navigator;
  }
}
