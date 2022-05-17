import '../Location.dart';

class Place extends Location {
  //CONSTRUCTOR
  Place(String name, Location father) :super(name, father);

  @override
  String getFullLocation() {
    // falta implementar
    return 'address';
  }
}