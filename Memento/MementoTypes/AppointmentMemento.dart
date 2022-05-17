import '../Memento.dart';

class AppointmentMemento extends Memento {
  AppointmentMemento(DateTime date, dynamic state)
      : super(date, state) {} //CAMBIAR DYNAMIC POR APPOINTMENT
}
