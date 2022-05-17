import "../Appointment.dart";
import "../../Observer/Observer.dart";
import "../Status.dart";

 class FaceToFace extends Appointment {
  //ATRIBUTO
  String address;

  //CONSTRUCTOR
  FaceToFace(
    this.address, String date, String time, Status status, Observer patient) :super(date, time, status, patient);
  

  //GETTER Y SETTER
  String getAddress() {
    return this.address;
  }
  setAddress(String address) {
    this.address = address;
  }

  //METODO ABSTRACTO
  List<String> getData() {
    List<String> list = [this.date, this.time, this.address];
    return list;
  }
}