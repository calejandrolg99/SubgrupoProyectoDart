import 'dart:html';

class Rating<R> {

  //PROPIEDADES
  R _value;
  String _comment; 

  Rating(this._value,this._comment);


  //METODOS
  R getRating(){
    return this._value;
  } 

  void setRating(R value){
    this._value = value;
  } 

  String getComment(){
    return this._comment;
  } 

  void setComment(String comment){
    this._comment = comment;
  } 


}