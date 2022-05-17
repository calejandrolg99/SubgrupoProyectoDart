import '../Memento.dart';

class HistoryMemento extends Memento {
  //ATRIBUTOS
  String _access;

  HistoryMemento(
      this._access, DateTime date, dynamic state) //CAMBIAR DYNAMIC POR HISTORY
      : super(date, state) {}

  //GETTERS Y SETTERS
  String getAccess() {
    return this._access;
  }

  setAccess(String access) {
    this._access = access;
  }
}
