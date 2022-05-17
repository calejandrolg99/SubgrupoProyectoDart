import '../Observer/Observer.dart';

abstract class Notifier{
  //PROPIEDADES 
  late Notifier _notifier;

  //METODOS
  Notifier getNotifier(){
    return this._notifier;

  }

  void setNotifier(Notifier notifier) {
    this._notifier = notifier;
  }

  //METODO ABSTRACTO
  void send(Observer observer);

}
