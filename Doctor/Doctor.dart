import "../Appointment/Appointment.dart";
import "../Observer/Observer.dart";
import "../Data/DataBuilder/DataBuilder.dart";
import "../Data/Data.dart";
import "../Notifier/Notifier.dart";
import "../Specialty/Specialty.dart";
import "../Specialty/SpecialitiesName.dart";
import "../Memento/Memento.dart";
import "../Criteria/Criteria.dart";

abstract class Doctor implements Observer {
  //ATRIBUTOS
  String name;
  List<Appointment> appointment;
  List<Specialty<SpecialitiesName>> specialty;

  //CONSTRUCTOR
  Doctor(this.name, this.specialty, this.appointment);

  //GETTER Y SETTER
  String getName() {
    return this.name;
  }
  setName(String name) {
    this.name = name;
  }

  List<Specialty<SpecialitiesName>> getSpecialty() {
    return this.specialty;
  }

  List<Appointment> getAppointment() {
    return this.appointment;
  }

  //METODO
  addAppointment(Appointment appointment) {
    this.appointment.add(appointment);
  }

  addSpecialty(Specialty<SpecialitiesName> specialty) {
    this.specialty.add(specialty);
  }

  //METODO ABSTRACTO
  Data makeMedicalHistory(DataBuilder builder, Criteria<dynamic,dynamic> criteria);

  //METODOS HEREDADO DE MEMENTO A TRAVES DE LA IMPLEMENTACION DE OBSERVABLE
  Memento<dynamic> save() {
    return new Memento(new DateTime.now(), this);
  }

  //METODO DE INTERFACE OBSERVER
  update(Notifier notifier) {
    notifier.send(this);
  }
}
