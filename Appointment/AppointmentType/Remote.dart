import "../Appointment.dart";
import "../../Observer/Observer.dart";
import "../Status.dart";

 class Remote extends Appointment {
  //ATRIBUTO
  String via;
  String link;

  //CONSTRUCTOR
  Remote(this.via, this.link, String date, String time, Status status, Observer patient) :super(date, time, status, patient);
  

  //GETTER Y SETTER
  String getVia() {
    return this.via;
  }
  setVia(String via) {
    this.via = via;
  }

  String getLink() {
    return this.link;
  }
  setLink(String link) {
    this.link = link;
  }

  //METODO ABSTRACTO
  List<String> getData() {
    List<String> list = [this.date, this.time, this.via, this.link];
    return list;
  }
}