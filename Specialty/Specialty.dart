class Specialty<T> {
  //ATRIBUTOS
  T nombre;

  //CONSTRUCTOR
  Specialty(this.nombre);

  //GETTER Y SETTER
  T getSpecialty() {
    return this.nombre;
  }
  setSpecialty(T nombre) {
    this.nombre = nombre;
  }
}
