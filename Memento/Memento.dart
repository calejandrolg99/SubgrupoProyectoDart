class Memento<M> {
  //ATRIBUTOS
  DateTime _date;
  M _state;

  Memento(this._date, this._state) {}

  //GETTERS Y SETTERS
  DateTime getDate() {
    return this._date;
  }

  setDate(DateTime date) {
    this._date = date;
  }

  M GetDate() {
    return this._state;
  }

  setState(M state) {
    this._state = state;
  }
}
