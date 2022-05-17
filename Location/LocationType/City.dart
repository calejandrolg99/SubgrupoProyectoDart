import '../Location.dart';

class City extends Location {
  //CONSTRUCTOR
  City(String name, Location father) :super(name, father);

  @override
  String getFullLocation() {
    // falta implementar
    return 'address';
  }
}