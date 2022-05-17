class Memento<M> {
  //ATRIBUTOS
  DateTime _date = DateTime.parse('0000-00-00');
  M _state;

  Memento(this._date, this._state) {}
  Memento.NullMemento(this._state) {}

  //GETTERS Y SETTERS
  DateTime getDate() {
    return this._date;
  }

  setDate(DateTime date) {
    this._date = date;
  }

  M getState() {
    return this._state;
  }

  setState(M state) {
    this._state = state;
  }
}
