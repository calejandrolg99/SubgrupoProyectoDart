import '../Memento/Memento.dart';
import '../Memento/Originator.dart';

abstract class Search<E, F> implements Originator {
  //ATRIBUTOS
  E _context;
  F _search;

  Search(this._context, this._search) {}

  //GETTERS Y SETTERS
  E getContext() {
    return this._context;
  }

  setContext(E context) {
    this._context = context;
  }

  F getSearch() {
    return this._search;
  }

  setSearch(F search) {
    this._search = search;
  }

  //METODOS
  F search();
  Memento save();
}
