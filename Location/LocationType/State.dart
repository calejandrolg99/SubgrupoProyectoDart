import '../Location.dart';

class State extends Location {
  //CONSTRUCTOR
  State(String name, Location father) :super(name, father);

  @override
  String getFullLocation() {
    // falta implementar
    return 'address';
  }
}