import 'dart:ffi';

import "../../Appointment.dart";
import "../../../Observer/Observer.dart";
import "./AccessDeniedException.dart";
import "../../Status.dart";

class ProxyAppointment extends Appointment {
  //ATRIBUTOS
  Appointment appointment;

  //CONSTRUCTOR
  ProxyAppointment(
    String date, String time, Status status, Observer observer, this.appointment) : super(date, time, status, observer);

  //GETTER
  getAppointment() {
    return this.appointment;
  }

  //METODO ABSTRACTO
  List<String>getData() {
    List<String> list = [this.date, this.time];
    return list;
  }

  //METODO
  Bool CheckAccess() {
    //Chequeo de acceso a la cita
    throw new AccessDeniedException();
  }
}