import "../Memento/Memento.dart";
import "../Notifier/Notifier.dart";
import "../Observer/Observable.dart";
import "../Observer/Observer.dart";
import "./Status.dart";

abstract class Appointment implements Observable {
  //ATRIBUTOS
  String date;
  String time;
  Status status;
  Observer patient;

  //CONSTRUCTOR
  Appointment(this.date, this.time, this.status, this.patient);

  //GETTER Y SETTER
  String getDate() {
    return this.date;
  }
  setDate(String date) {
    this.date = date;
  }

  String getTime() {
    return this.time;
  }
  setTime(String time) {
    this.time = time;
  }

  Status getStatus() {
    return this.status;
  }
  setStatus(Status status) {
    this.status = status;
  }

  Observer getPatient() {
    return this.patient;
  }
  setPatient(Observer patient) {
    this.patient = patient;
  }

  //METODO ABSTRACTO
  List<String> getData();

  //METODOS IMPLEMENTADOS DE OBSERVABLE
  @override
  add(List<Observer> patient){
    this.patient;
  }

  notifyall(Notifier notifier){
    this.patient.update(notifier);
  }

  //METODOS HEREDADO DE MEMENTO A TRAVES DE LA IMPLEMENTACION DE OBSERVABLE
  Memento<dynamic> save() {
    String dateTimeString = date + " " + time;
      return new Memento(new DateTime.now(), this);
  }

}


