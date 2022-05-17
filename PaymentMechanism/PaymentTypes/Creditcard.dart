import 'dart:svg';

import '../PaymentMechanism.dart';

class CreditCard implements PaymentMechanism {
  //ATRIBUTOS
  Number _cardNumber;
  Number _securityCode;
  String _type;
  DateTime _expiration;

  CreditCard(
      this._cardNumber, this._securityCode, this._type, this._expiration) {}

  //GETTERS Y SETTERS
  Number getCardNumber() {
    return this._cardNumber;
  }

  setCardNumber(Number cardNumber) {
    this._cardNumber = cardNumber;
  }

  Number getSecurityCode() {
    return this._securityCode;
  }

  setSecurityCode(Number securityCode) {
    this._securityCode = securityCode;
  }

  String getType() {
    return this._type;
  }

  setType(String type) {
    this._type = type;
  }

  DateTime getExpiration() {
    return this._expiration;
  }

  setExpiration(DateTime expiration) {
    this._expiration = expiration;
  }

  //METODOS
  @override
  pay(Number mount) {
    try {
      //SE INTENTA PAGAR
    } catch (e) {
      print(e);
    }
    //Servicio externo de pago con tarjeta
  }
}
