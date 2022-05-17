import '../Location.dart';

class Country extends Location {
  //CONSTRUCTOR
  Country(String name, Location father) :super(name, father);

  @override
  String getFullLocation() {
    // falta implementar
    return 'address';
  }
}