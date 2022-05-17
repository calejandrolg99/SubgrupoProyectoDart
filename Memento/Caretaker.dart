import 'Memento.dart';

class Caretaker {
  //ATRIBUTOS
  List<Memento> mementos;

  Caretaker(this.mementos) {}

  //METODOS
  Memento getVersion(DateTime date) {
    var i = 0;
    var found = false;

    this.mementos.forEach((memento) {
      if (date.toString() == memento.getState().toString()) {
        found = true;
      }
      i++;
    });
    if (found) {
      return this.mementos[i];
    } else {
      return Memento.NullMemento(null);
    }
  }

  addMemento(Memento memento) {
    this.mementos.add(memento);
  }
}
