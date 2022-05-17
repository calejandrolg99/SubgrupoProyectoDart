abstract class Location {
  //ATRIBUTOS
  String name;
  Location father;

  //CONSTRUCTOR
  Location(this.name, this.father);

  //GETTER Y SETTER
  String getName() {
    return this.name;
  }

  setName(String name) {
    this.name = name;
  }

  //METODO ABSTRACTO
  String getFullLocation();
}